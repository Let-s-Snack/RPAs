# imports
import pandas as pd
import psycopg2
from psycopg2 import sql
import datetime
from sqlalchemy import create_engine, text
from pymongo import MongoClient
from dotenv import load_dotenv
import os

# connecting to databases
load_dotenv()

cnxn = psycopg2.connect(
    host=os.getenv('DB_HOST'),
    database=os.getenv('DB_DATABASE1'),
    user=os.getenv('DB_USER'),
    password=os.getenv('DB_PWD'),
    port=os.getenv('DB_PORT')
)

engine = create_engine(f'postgresql://{os.getenv('DB_USER')}:{os.getenv('DB_PWD')}@{os.getenv('DB_HOST')}:{os.getenv('DB_PORT')}/{os.getenv('DB_DATABASE2')}')

cursor = cnxn.cursor()

client = MongoClient(os.getenv('NO_SQL_HOST'))
db = client[os.getenv('NO_SQL_DB')]
restrictions_collection = db.get_collection('Restrictions')
ingredients_collection = db.get_collection('Ingredients')
recipes_collection = db.get_collection('Recipes')
adm_collection = db.get_collection('Adm')

def preparation_methods(steps, id):
    step = 1
    stepsList = []
    while True:
        try:
            mensage = steps[:steps.find(';')+1]
        except:
            mensage = ''
            
        stepsList.append(
            {
                'fk_let_recipes_id': id,
                'step': step,
                'mensage': mensage,
                'creation_date': datetime.datetime.now()
            }
        )
        step += 1
        try:
            steps = steps[steps.find(';')+1:]
        except:
            steps = ''
        
        if steps.find(';') == -1:
            try:
                mensage = steps[:len(steps)]
            except:
                mensage = ''
            
            stepsList.append(
                {
                    'fk_let_recipes_id': id,
                    'step': step,
                    'mensage': mensage,
                    'creation_date': datetime.datetime.now()
                }
            )
            break
    
    return stepsList

# migration to SQL

# INSERTs
# Admin

with engine.connect() as connection:
    try:
        df_adm = pd.read_sql(f'SELECT email, password, is_deleted, name FROM Admin WHERE transaction_made = {False}', cnxn)

        df_adm['creation_date'] = datetime.datetime.now()

        df_adm.to_sql('let_adm', con=engine, if_exists='append', index=False)
        
        # Ingredient
        df_ingredients = pd.read_sql(f'SELECT id, name, description, is_deleted FROM ingredient WHERE transaction_made = {False}', cnxn)

        df_ingredients.columns = ['pk_id', 'name', 'description', 'is_deleted']
        df_ingredients['creation_date'] = datetime.datetime.now()

        df_ingredients.to_sql('let_ingredients', con=engine, if_exists='append', index=False)

        # Restriction
        df_restriction = pd.read_sql(f'SELECT id, description, type, image_url, is_deleted FROM restriction WHERE transaction_made = {False}', cnxn)

        df_restriction.columns = ['pk_id', 'description', 'name', 'url_photo', 'is_deleted']
        df_restriction['creation_date'] = datetime.datetime.now()

        df_restriction.to_sql('let_restrictions', con=engine, if_exists='append', index=False)

        # Ingredient_Restriction
        df_ingredient_restriction = pd.read_sql(f'SELECT DISTINCT ingredient_id, restriction_id FROM ingredient_restriction WHERE transaction_made = {False}', cnxn)

        df_ingredient_restriction.columns = ['pfk_let_ingredients_id', 'pfk_let_restrictions_id']

        df_ingredient_restriction.to_sql('let_ingredients_broken_restrictions', con=engine, if_exists='append', index=False)

        # Recipe
        df_recipes = pd.read_sql(f'SELECT id, name, description, image_url, is_deleted FROM recipe WHERE transaction_made = {False}', cnxn)
        df_recipes.columns = ['pk_id', 'name', 'description', 'url_photo', 'is_deleted']
        df_recipes['creation_date'] = datetime.datetime.now()

        df_recipes.to_sql('let_recipes', con=engine, if_exists='append', index=False)

        df_preparation_methods = pd.read_sql(f'SELECT id, steps FROM recipe WHERE transaction_made = {False}', cnxn)
        stepsList = []
        for key, val in df_preparation_methods.iterrows():
            for i in (preparation_methods(val['steps'], val['id'])):
                stepsList.append(i)

        df_preparation_methods = pd.DataFrame(stepsList)

        df_preparation_methods.to_sql('let_preparation_methods', con=engine, if_exists='append', index=False)

        # Ingredient_Recipe

        df_medition_types = pd.read_sql('SELECT * FROM let_medition_types', engine)

        df_ingredient_recipe = pd.read_sql(f"SELECT DISTINCT ingredient_id, recipe_id, measure, quantity FROM ingredient_recipe WHERE transaction_made={False} and quantity is not null", cnxn)

        df_ingredient_recipe.columns = ['pfk_let_ingredients_id', 'pfk_let_recipes_id', 'fk_let_medition_types_id', 'quantity']

        df_ingredient_recipe_no = df_ingredient_recipe.copy()
        df_ingredient_recipe_no.columns = ['ingredient_id', 'pfk_let_recipes_id', 'medition_type', 'quantity']

        df_ingredient_recipe['creation_date'] = datetime.datetime.now()

        with engine.connect() as connectionMedition:
            for medition_type in df_ingredient_recipe['fk_let_medition_types_id'].unique():
                if medition_type not in df_medition_types['name'].unique():
                    query = text("INSERT INTO let_medition_types (name, creation_date) VALUES (:name, :creation_date)")
                    
                    connectionMedition.execute(query, {'name': medition_type, 'creation_date': datetime.date.today()})
            connectionMedition.commit()

        df_medition_types = pd.read_sql("SELECT * FROM let_medition_types", engine)     

        for key, val in df_medition_types.iterrows():
            df_ingredient_recipe = df_ingredient_recipe.replace(val['name'], val['pk_id'])

        df_ingredient_recipe.to_sql('let_recipes_ingredients', con=engine, if_exists='append', index=False)

        # Recipe_Restriction
        df_recipe_restriction = pd.read_sql(f'select recipe_id, restriction_id  from recipe_restriction WHERE transaction_made = {False}', cnxn)

        df_recipe_restriction.columns = ['pfk_let_recipes_id', 'pfk_let_restrictions_id']

        df_recipe_restriction.to_sql('let_recipes_broken_restrictions', con=engine, if_exists='append', index=False)

        cnxn.commit()
        connection.commit()
        # DELETES
        # ingredient_restriction
        try:
            delete_ids = pd.read_sql(f"SELECT ingredient_id, restriction_id FROM ingredient_restriction WHERE is_deleted = {True};", cnxn)
            
            for i, row in delete_ids.iterrows():
                delete = text("DELETE FROM let_ingredients_broken_restrictions WHERE pfk_let_ingredients_id = :x AND pfk_let_restrictions_id = :y")
                connection.execute(delete, {'x': int(row['ingredient_id']), 'y': int(row['restriction_id'])})
                connection.commit()
        except:
            pass

        # ingredient_recipe
        try:
            delete_ids = pd.read_sql(f"SELECT ingredient_id, recipe_id FROM ingredient_recipe WHERE is_deleted = {True};", cnxn)
            
            for i, row in delete_ids.iterrows():
                delete = text("DELETE FROM let_recipes_ingredients WHERE pfk_let_ingredients_id = :x AND pfk_let_recipes_id = :y")
                connection.execute(delete, {'x': int(row['ingredient_id']), 'y': int(row['recipe_id'])})
                connection.commit()
        except:
            pass

        # recipe_restriction
        try:
            delete_ids = pd.read_sql(f"SELECT restriction_id, recipe_id FROM recipe_restriction WHERE is_deleted = {True};", cnxn)
            
            for i, row in delete_ids.iterrows():
                delete = text("DELETE FROM let_recipes_broken_restrictions WHERE pfk_let_restrictions_id = :x AND pfk_let_recipes_id = :y")
                connection.execute(delete, {'x': int(row['restriction_id']), 'y': int(row['recipe_id'])})
                connection.commit()
        except:
            pass
        
        # UPDATE
        # Admin
        try:
            connection.commit()
        except:
            pass
        df_adm_update = pd.read_sql(f"select email, password, name, is_deleted from admin where is_updated = {True};", cnxn)
        
        for i, ii in df_adm_update.iterrows():
            setStr = 'SET '
            for key, val in ii.items():
                if type(val) in (str, datetime.date, datetime.datetime):
                    setStr += f"{key}='{val}',"
                else:
                    setStr += f"{key}={val},"

            setStr = setStr[:len(setStr)-1]

            update = text(f"UPDATE let_adm {setStr} WHERE email = :email")
            connection.execute(update, {"email": ii['email']})
        
            # Ingredient
        df_ingredient_update = pd.read_sql(f"select id, name, description, is_deleted from ingredient where is_updated = {True};", cnxn)

        for i, ii in df_ingredient_update.iterrows():
            setStr = 'SET '
            for key, val in ii.items():
                if key != 'id':
                    if type(val) in (str, datetime.date, datetime.datetime):
                        setStr += f"{key}='{val}',"
                    else:
                        setStr += f"{key}={val},"

            setStr = setStr[:len(setStr)-1]
            
            try:
                connection.commit()
            except:
                pass
            
            update = text(f"UPDATE let_ingredients {setStr} WHERE pk_id={ii['id']}")
            
            connection.execute(update)
            

        # Restriction
        df_restriction_update = pd.read_sql(f"select id, type as name, description, is_deleted, image_url as url_photo from restriction where is_updated = {True};", cnxn)

        for i, ii in df_restriction_update.iterrows():
            setStr = 'SET '
            for key, val in ii.items():
                if key != 'id':
                    if type(val) in (str, datetime.date, datetime.datetime):
                        setStr += f"{key}='{val}',"
                    else:
                        setStr += f"{key}={val},"

            setStr = setStr[:len(setStr)-1]
            
            
            update = text(f"UPDATE let_restrictions {setStr} WHERE pk_id={ii['id']}")
            
            connection.execute(update)
            

        # Recipe
        df_recipes_update = pd.read_sql(f"select id, name, image_url as url_photo, description, is_deleted, steps from recipe r where is_updated = {True};", cnxn)
        for i, ii in df_recipes_update.iterrows():
            setStr = 'SET '
            steps = ''
            id = 0
            for key, val in ii.items():
                if key not in ('id', 'steps'):
                    if type(val) in (str, datetime.date, datetime.datetime):
                        setStr += f"{key}='{val}',"
                    else:
                        setStr += f"{key}={val},"
                
                if key == 'steps':
                    steps = val
                    
                if key == 'id':
                    id = val

            setStr = setStr[:len(setStr)-1]
            
            
            delete = text(f"DELETE FROM let_preparation_methods WHERE fk_let_recipes_id = {id}")
            
            connection.execute(delete)
            
        
            df_preparation_methods = pd.DataFrame(preparation_methods(steps, id))

            df_preparation_methods.to_sql('let_preparation_methods', con=engine, if_exists='append', index=False)

            update = text(f"UPDATE let_recipes {setStr} WHERE pk_id={ii['id']}")
            
            connection.execute(update)
            
        # Ingredient_Recipe
        df_medition_types = pd.read_sql('SELECT * FROM let_medition_types', engine)
        
        try:
            connection.commit()
        except Exception as ex:
            pass
        
        try:
            df_ingredient_recipe = pd.read_sql(f"select distinct concat(ingredient_id, '-', recipe_id) as id, measure as fk_let_medition_types_id, quantity from ingredient_recipe where is_updated = {True};", cnxn)
            
            df_ingredient_recipe_no = pd.read_sql(f"select ingredient_id, recipe_id, measure as fk_let_medition_types_id, quantity from ingredient_recipe where is_updated = {True};", cnxn)
            
            for key, val in df_medition_types.iterrows():
                try:
                    df_ingredient_recipe['fk_let_medition_types_id'] = df_ingredient_recipe['fk_let_medition_types_id'].replace(val['name'], val['pk_id'])
                except:
                    pass
        
            for i, ii in df_ingredient_recipe.iterrows():
                setStr = 'SET '
                for key, val in ii.items():
                    if key != 'id':
                        if type(val) in (str, datetime.date, datetime.datetime):
                            setStr += f"{key}='{val}',"
                        else:
                            setStr += f"{key}={val},"

                setStr = setStr[:len(setStr)-1]
                
                update = text(f"UPDATE let_recipes_ingredients {setStr} WHERE (pfk_let_ingredients_id::text || '-' || pfk_let_recipes_id::text)='{ii['id']}'")

                connection.execute(update)
                connection.commit()
                
        except Exception as Ex:
            pass

        cnxn.commit()

        # Migration to NoSQL - MONGO
        # INSERTS e UPDATES

        # Admin
        admins = df_adm.to_dict('records')

        if admins:
            adm_collection.insert_many(admins)

        df_adm = pd.read_sql(f"select email, password, is_deleted from admin a where is_updated = {True}", cnxn)
        update = {}
        for key, val in df_adm.iterrows():
            for i, ii in val.items():
                update[i] = ii

            adm_collection.update_one(
                {'email': val['email']},
                {"$set":update}
            )
            update = {}

        # Restrictions
        df_restriction.columns = ['external_id', 'description', 'name', 'url_photo', 'is_deleted','creation_date']
        restrictions = df_restriction.to_dict('records')

        if restrictions:
            restrictions_collection.insert_many(restrictions)

        df_restriction_update = pd.read_sql(f"select id as external_id, type as name, is_deleted, image_url as url_photo, description from restriction r where is_updated = {True}", cnxn)
        update = {}
        for key, val in df_restriction_update.iterrows():
            for i, ii in val.items():
                update[i] = ii

            restrictions_collection.update_one(
                {'external_id': val['external_id']},
                {"$set":update}
            )
            update = {}

        # Ingredient
        df_ingredients.columns = ['external_id', 'name', 'description','is_deleted', 'creation_date']
        ingredients = df_ingredients.to_dict('records')

        if ingredients:
            ingredients_collection.insert_many(ingredients)

        df_ingredients_update = pd.read_sql(f"select id as external_id, name, description, is_deleted from ingredient where is_updated = {True}", cnxn)
        update = {}
        for key, val in df_ingredients_update.iterrows():
            for i, ii in val.items():
                update[i] = ii

            ingredients_collection.update_one(
                {'external_id': val['external_id']},
                {"$set":update}
            )
            update = {}

        # Recipes
        df_recipes.columns = ['external_id', 'name', 'description', 'url_photo','is_deleted', 'creation_date']
        recipes = df_recipes.to_dict('records')

        if recipes:
            recipes_collection.insert_many(recipes)

        df_recipe_update = pd.read_sql(f"select id as external_id, name, is_deleted, image_url as url_photo, description  from recipe r where is_updated = {True}", cnxn)
        update = {}
        for key, val in df_recipe_update.iterrows():
            for i, ii in val.items():
                update[i] = ii

            recipes_collection.update_one(
                {'external_id': val['external_id']},
                {"$set":update}
            )
            update = {}

        # N:M Tables - Lists for NoSQL

        # getting the IDs of recipes and ingredients that were either INSERTED or UPDATED
        df_recipes_ids = pd.read_sql(f'''SELECT DISTINCT * FROM (SELECT id FROM recipe r WHERE r.is_updated = {True} OR r.transaction_made = {False} UNION SELECT ir.recipe_id FROM ingredient_recipe ir WHERE ir.is_updated = {True} OR ir.transaction_made = {False} UNION SELECT rr.recipe_id FROM recipe_restriction rr WHERE rr.transaction_made = {False} or rr.is_deleted = {True}) AS t;''', cnxn)
        
        recipes_ids = df_recipes_ids.to_records(index=False)
        
        try:
            recipes_ids = tuple([item[0] for item in recipes_ids])
        except:
            recipes_ids = (0,0)

        while len(recipes_ids) <= 1:
            recipes_ids = (*recipes_ids, 0)
        recipes_ids_l = []
        for i in recipes_ids:
            recipes_ids_l.append(int(i))
        recipes_ids = tuple(recipes_ids_l)

        df_ingredients_ids = pd.read_sql(f'''select distinct * from (
            select id from ingredient i where i.is_updated = {True} or i.transaction_made = {False}
            UNION
            select ir.ingredient_id  from ingredient_restriction ir where ir.transaction_made = {False} or ir.is_deleted = {True}
            ) as t;''', cnxn)
        
        ingredient_ids = tuple(df_ingredients_ids.to_records(index=False))
        try:
            ingredient_ids = tuple([item[0] for item in ingredient_ids])
        except:
            ingredient_ids = (0,0)
            
        ingredient_ids_l = []
        for i in ingredient_ids:
            ingredient_ids_l.append(int(i))
        ingredient_ids = tuple(ingredient_ids_l)
        
        while len(ingredient_ids) <= 1:
            ingredient_ids = (*ingredient_ids, 0)

        # getting the values ​​that are in the collected IDs
        df_let_recipes_restrictions = pd.read_sql(f"select * from let_recipes_broken_restrictions lrbr where pfk_let_recipes_id in {recipes_ids}", engine)

        df_let_methods = pd.read_sql(f"select * from let_preparation_methods where fk_let_recipes_id in {recipes_ids}", engine)

        df_let_recipes_ingredients = pd.read_sql(f"""
        select 
            lri.pfk_let_recipes_id, 
            lri.pfk_let_ingredients_id, 
            lmt.name, 
            lri.quantity 
        from let_recipes_ingredients lri 
        join let_medition_types lmt 
        on lmt.pk_id = lri.fk_let_medition_types_id 
        where lri.pfk_let_recipes_id in {recipes_ids}""", engine)
        
        df_let_ingredients_restrictions = pd.read_sql(f"select * from let_ingredients_broken_restrictions where pfk_let_ingredients_id in {ingredient_ids}", engine)

        restrictions_ids = list(set(df_let_ingredients_restrictions['pfk_let_restrictions_id'].unique()).union(set(df_let_recipes_restrictions['pfk_let_restrictions_id'].unique())))
        restrictions_ids = [int(x) for x in restrictions_ids]
        
        ingredients_recipes_ids = set()
        for i in df_let_recipes_ingredients['pfk_let_ingredients_id'].unique():
            ingredients_recipes_ids.add(int(i))
        # collecting _ids from collected ids
        df_ingredients_no = pd.DataFrame(ingredients_collection.find({"external_id": {"$in": list(set(ingredient_ids).union(ingredients_recipes_ids))}}, {'_id':1, "external_id": 1}))

        df_restrictions_no = pd.DataFrame(restrictions_collection.find({"external_id": {"$in": restrictions_ids}}, {'_id':1, "external_id": 1})) 

        # replacing ids with _ids
        for key, val in df_restrictions_no.iterrows():
            df_let_recipes_restrictions['pfk_let_restrictions_id'] = df_let_recipes_restrictions['pfk_let_restrictions_id'].replace(val['external_id'], val['_id'])
            df_let_ingredients_restrictions['pfk_let_restrictions_id'] = df_let_ingredients_restrictions['pfk_let_restrictions_id'].replace(val['external_id'], val['_id'])

        for key, val in df_ingredients_no.iterrows():
            df_let_recipes_ingredients['pfk_let_ingredients_id'] = df_let_recipes_ingredients['pfk_let_ingredients_id'].replace(val['external_id'], val['_id'])

        # grouping values ​​by collection id
        df_let_ingredients_restrictions = df_let_ingredients_restrictions.groupby('pfk_let_ingredients_id')['pfk_let_restrictions_id'].agg(list).reset_index()

        df_let_recipes_restrictions = df_let_recipes_restrictions.groupby('pfk_let_recipes_id')['pfk_let_restrictions_id'].agg(list).reset_index()

        ingredients_recipes = []
        for key, val in df_let_recipes_ingredients.iterrows():
            ingredients_recipes.append(
                {
                    "recipe_id": val['pfk_let_recipes_id'],
                    "ingredients": {
                        'ingredient_id': val['pfk_let_ingredients_id'],
                        'medition_type': val['name'],
                        'quantity': val['quantity']
                    }
                }
            )
        df_let_ingredient_recipes = pd.DataFrame(ingredients_recipes, columns=['recipe_id', 'ingredients'])
        df_let_ingredient_recipes = df_let_ingredient_recipes.groupby('recipe_id')['ingredients'].agg(list).reset_index()
        df_let_methods = df_let_methods.groupby('fk_let_recipes_id')['mensage'].agg(list).reset_index()

        # inserting lists into ingredients
        for i in ingredient_ids:
            let_ingredients_restrictions = df_let_ingredients_restrictions.loc[df_let_ingredients_restrictions['pfk_let_ingredients_id'] == i]['pfk_let_restrictions_id']
            if let_ingredients_restrictions.empty:
                result = []
            else:
                result = let_ingredients_restrictions.iloc[0]
                
            ingredients_collection.update_one(
                {"external_id": i},
                {"$set": {"broken_restrictions": []}},  
            )
            ingredients_collection.update_one(
                {"external_id": i},
                {"$addToSet": {"broken_restrictions": {"$each": result}}}
            )

        # inserting lists into recipes
        for i in recipes_ids:
            let_recipes_restrictions = df_let_recipes_restrictions.loc[df_let_recipes_restrictions['pfk_let_recipes_id'] == i]['pfk_let_restrictions_id']
            if let_recipes_restrictions.empty:
                result = []
            else:
                result = let_recipes_restrictions.iloc[0]
                
            recipes_collection.update_one(
                {"external_id": i},
                {"$set": {"broken_restrictions": []}},  
            )
            recipes_collection.update_one(
                {"external_id": i},
                {"$addToSet": {"broken_restrictions": {"$each": result}}}
            )
            
            
            let_ingredient_recipes = df_let_ingredient_recipes.loc[df_let_ingredient_recipes['recipe_id'] == i]['ingredients']
            if let_ingredient_recipes.empty:
                result = []
            else:
                result = let_ingredient_recipes.iloc[0]
                
            recipes_collection.update_one(
                {"external_id": i},
                {"$set": {"ingredients": []}},  
            )
            recipes_collection.update_one(
                {"external_id": i},
                {"$addToSet": {"ingredients": {"$each": result}}}
            )
            
            
            let_methods = df_let_methods.loc[df_let_methods['fk_let_recipes_id'] == i]['mensage']
            if let_methods.empty:
                result = []
            else:
                result = let_methods.iloc[0]
                
            recipes_collection.update_one(
                {"external_id": i},
                {"$set": {"preparation_methods": []}},  
            )
            recipes_collection.update_one(
                {"external_id": i},
                {"$addToSet": {"preparation_methods": {"$each": result}}}
            )
            

        # Updating transaction status

        cursor.execute(f"UPDATE ingredient SET transaction_made={True} WHERE transaction_made={False}")
        cursor.execute(f"UPDATE ingredient SET is_updated={False} WHERE is_updated={True}")
        
        cursor.execute(f"UPDATE restriction SET transaction_made={True} WHERE transaction_made={False}")
        cursor.execute(f"UPDATE restriction SET is_updated={False} WHERE is_updated={True}")
        
        cursor.execute(f"UPDATE recipe SET transaction_made={True} WHERE transaction_made={False}")
        cursor.execute(f"UPDATE recipe SET is_updated={False} WHERE is_updated={True}")
        
        cursor.execute(f"UPDATE Ingredient_Recipe SET transaction_made={True} WHERE transaction_made={False} and quantity is not null")
        cursor.execute(f"UPDATE Ingredient_Recipe SET is_updated={False} WHERE is_updated={True} and quantity is not null")
        
        cursor.execute(f"UPDATE admin SET transaction_made={True} WHERE transaction_made={False}")
        cursor.execute(f"UPDATE admin SET is_updated={False} WHERE is_updated={True}")

        cursor.execute(f"UPDATE ingredient_restriction SET transaction_made={True} WHERE transaction_made={False}")
        cursor.execute(f"UPDATE recipe_restriction SET transaction_made={True} WHERE transaction_made={False}")
        
        try:
            connection.commit()
        except:
            pass
        
        # Deleting 
        delete_query = sql.SQL(f"""
            DELETE FROM ingredient_recipe 
            WHERE is_deleted = {True}
        """)

        cursor.execute(delete_query)
        

        delete_query = sql.SQL(f"""
            DELETE FROM ingredient_restriction 
            WHERE is_deleted = {True}
        """)
        cursor.execute(delete_query)
        
        delete_query = sql.SQL(f"""
            DELETE FROM recipe_restriction 
            WHERE is_deleted = {True}
        """)

        cursor.execute(delete_query)
        cnxn.commit()
        connection.commit()
        
        print("MENSAGEM: MIGRAÇÃO EXECUTADA COM SUCESSO!")
    except Exception as ex:
        print("MENSAGEM: ERRO DURANTE A EXECUÇÃO")
        print("ERRO:", ex)
        connection.rollback()
        cnxn.rollback()
    finally:
        print("DATA:", datetime.datetime.now())

# closing connections
cursor.close()
cnxn.close()
client.close()