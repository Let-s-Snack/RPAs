# imports
import pandas as pd
import psycopg2
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
persons_collection = db.get_collection('Persons')
restrictions_collection = db.get_collection('Restrictions')
ingredients_collection = db.get_collection('Ingredients')
chats_collection = db.get_collection('Chats')
recipes_collection = db.get_collection('Recipes')

# migration to SQL

# Admin
df_adm = pd.read_sql(f'SELECT email, password, name FROM Admin WHERE transaction_made = {False}', cnxn)

df_adm.columns = ['email', 'name', 'password']
df_adm['creation_date'] = datetime.datetime.now()

df_adm.to_sql('let_adm', con=engine, if_exists='append', index=False)

cnxn.commit()

# Ingredient
df_ingredients = pd.read_sql(f'SELECT id, name, description FROM ingredient WHERE transaction_made = {False}', cnxn)

df_ingredients.columns = ['pk_id', 'name', 'description']
df_ingredients['creation_date'] = datetime.datetime.now()

df_ingredients.to_sql('let_ingredients', con=engine, if_exists='append', index=False)

cnxn.commit()

# Restriction
df_restriction = pd.read_sql(f'SELECT id, description, type, image_url FROM restriction WHERE transaction_made = {False}', cnxn)

df_restriction.columns = ['pk_id', 'description', 'name', 'url_photo']
df_restriction['creation_date'] = datetime.datetime.now()

df_restriction.to_sql('let_restrictions', con=engine, if_exists='append', index=False)

cnxn.commit()

# Ingredient_Restriction
df_ingredient_restriction = pd.read_sql(f'SELECT ingredient_id, restriction_id FROM ingredient_restriction WHERE transaction_made = {False}', cnxn)

df_ingredient_restriction.columns = ['pfk_let_ingredients_id', 'pfk_let_restrictions_id']

df_ingredient_restriction.to_sql('let_ingredients_broken_restrictions', con=engine, if_exists='append', index=False)

cnxn.commit()

# Recipe
df_recipes = pd.read_sql(f'SELECT id, name, description, image_url FROM recipe WHERE transaction_made = {False}', cnxn)
df_recipes.columns = ['pk_id', 'name', 'description', 'url_photo']
df_recipes['creation_date'] = datetime.datetime.now()

df_recipes.to_sql('let_recipes', con=engine, if_exists='append', index=False)

cnxn.commit()

df_preparation_methods = pd.read_sql(f'SELECT id, steps FROM recipe WHERE transaction_made = {False}', cnxn)
stepsList = []
for key, val in df_preparation_methods.iterrows():
    step = 1
    steps = val['steps']
    while True:
        try:
            mensage = steps[:steps.find(';')+1]
        except:
            mensage = ''
            
        stepsList.append(
            {
                'fk_let_recipes_id': val['id'],
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
                    'fk_let_recipes_id': val['id'],
                    'step': step,
                    'mensage': mensage,
                    'creation_date': datetime.datetime.now()
                }
            )
            break
    
df_preparation_methods = pd.DataFrame(stepsList)

df_preparation_methods.to_sql('let_preparation_methods', con=engine, if_exists='append', index=False)

cnxn.commit()

# Ingredient_Recipe

df_medition_types = pd.read_sql('SELECT * FROM let_medition_types', engine)

df_ingredient_recipe = pd.read_sql(f"SELECT ingredient_id, recipe_id, measure, quantity FROM ingredient_recipe WHERE transaction_made={False}", cnxn)

df_ingredient_recipe.columns = ['pfk_let_ingredients_id', 'pfk_let_recipes_id', 'fk_let_medition_types_id', 'quantity']

df_ingredient_recipe_no = df_ingredient_recipe.copy()
df_ingredient_recipe_no.columns = ['ingredient_id', 'pfk_let_recipes_id', 'medition_type', 'quantity']

df_ingredient_recipe['creation_date'] = datetime.datetime.now()
for medition_type in df_ingredient_recipe['fk_let_medition_types_id'].unique():
    if medition_type not in df_medition_types['name'].unique():
        with engine.connect() as connection:
            query = text("INSERT INTO let_medition_types (name, creation_date) VALUES (:name, :creation_date)")
            
            connection.execute(query, {'name': medition_type, 'creation_date': datetime.date.today()})
            connection.commit()

df_medition_types = pd.read_sql("SELECT * FROM let_medition_types", engine)     

for key, val in df_medition_types.iterrows():
    df_ingredient_recipe = df_ingredient_recipe.replace(val['name'], val['pk_id'])

df_ingredient_recipe.to_sql('let_recipes_ingredients', con=engine, if_exists='append', index=False)

cnxn.commit()

# Recipe_Restriction
df_recipe_restriction = pd.read_sql(f'select recipe_id, restriction_id  from recipe_restriction WHERE transaction_made = {False}', cnxn)

df_recipe_restriction.columns = ['pfk_let_recipes_id', 'pfk_let_restrictions_id']

df_recipe_restriction.to_sql('let_recipes_broken_restrictions', con=engine, if_exists='append', index=False)

cnxn.commit()


# migration to NoSQL

# Ingredient
df_ingredients.columns = ['external_id', 'name', 'description', 'creation_date']
ingredients = df_ingredients.to_dict('records')

if ingredients:
    ingredients_collection.insert_many(ingredients)

ingredients_ids = list(sorted(pd.concat([df_ingredient_recipe_no['ingredient_id'], df_ingredient_restriction['pfk_let_ingredients_id']]).unique()))
ingredients_oids = []
ingredients_ids = [int(x) for x in ingredients_ids]

for i in list(ingredients_collection.find({"external_id": {"$in": ingredients_ids}}, {"_id": 1}).sort("external_id" , 1)):
    ingredients_oids.append(i['_id'])
    
df_ingredients_ids = pd.DataFrame({"id": ingredients_ids, "_id": ingredients_oids})

for key, val in df_ingredients_ids.iterrows():
    df_ingredient_recipe_no['ingredient_id'] = df_ingredient_recipe_no['ingredient_id'].replace(val['id'], val['_id'])
    df_ingredient_restriction['pfk_let_ingredients_id'] = df_ingredient_restriction['pfk_let_ingredients_id'].replace(val['id'], val['_id'])

# Restriction
df_restriction.columns = ['external_id', 'description', 'name', 'url_photo', 'creation_date']
restrictions = df_restriction.to_dict('records')

if restrictions:
    restrictions_collection.insert_many(restrictions)

restrictions_ids = list(sorted(pd.concat([df_ingredient_restriction['pfk_let_restrictions_id'], df_recipe_restriction['pfk_let_restrictions_id']]).unique()))
restrictions_oids = []
restrictions_ids = [int(x) for x in restrictions_ids]

for i in list(restrictions_collection.find({"external_id": {"$in": restrictions_ids}}, {"_id": 1}).sort("external_id" , 1)):
    restrictions_oids.append(i['_id'])
    
df_restrictions_ids = pd.DataFrame({"id": ingredients_ids, "_id": ingredients_oids})

for key, val in df_restrictions_ids.iterrows():
    df_ingredient_restriction['pfk_let_restrictions_id'] = df_ingredient_restriction['pfk_let_restrictions_id'].replace(val['id'], val['_id'])
    df_recipe_restriction['pfk_let_restrictions_id'] = df_recipe_restriction['pfk_let_restrictions_id'].replace(val['id'], val['_id'])
    
# Recipes
df_recipes.columns = ['external_id', 'name', 'description', 'url_photo', 'creation_date']
recipes = df_recipes.to_dict('records')

if recipes:
    recipes_collection.insert_many(recipes)

recipes_ids = list(sorted(pd.concat([df_ingredient_recipe['pfk_let_recipes_id'], df_recipe_restriction['pfk_let_recipes_id'], df_preparation_methods['fk_let_recipes_id']]).unique()))
recipes_oids = []
recipes_ids = [int(x) for x in recipes_ids]

for i in list(recipes_collection.find({"external_id": {"$in": recipes_ids}}, {"_id": 1}).sort("external_id" , 1)):
    recipes_oids.append(i['_id'])
    
df_recipes_ids = pd.DataFrame({"id": recipes_ids, "_id": recipes_oids})

for key, val in df_recipes_ids.iterrows():
    df_ingredient_recipe_no['pfk_let_recipes_id'] = df_ingredient_recipe_no['pfk_let_recipes_id'].replace(val['id'], val['_id'])
    df_recipe_restriction['pfk_let_recipes_id'] = df_recipe_restriction['pfk_let_recipes_id'].replace(val['id'], val['_id'])
    df_preparation_methods['fk_let_recipes_id'] = df_preparation_methods['fk_let_recipes_id'].replace(val['id'], val['_id'])

# broken_restrictions_ingredient
df_ingredient_restriction = df_ingredient_restriction.groupby('pfk_let_ingredients_id')['pfk_let_restrictions_id'].agg(list).reset_index()

for key, val in df_ingredient_restriction.iterrows():
    ingredients_collection.update_one(
        {"_id": val['pfk_let_ingredients_id']},
        {"$addToSet": {"broken_restrictions": {"$each": val['pfk_let_restrictions_id']}}},  
    )

# ingredient_recipes
for i in df_ingredient_recipe_no['pfk_let_recipes_id'].unique():
    ingredients_recipe = []
    for key, val in df_ingredient_recipe_no.loc[df_ingredient_recipe_no['pfk_let_recipes_id'] == i].iterrows():
        val_dict = dict(val)
        val_dict.pop('pfk_let_recipes_id', None)
        ingredients_recipe.append(val_dict)

    recipes_collection.update_one(
        {"_id": val['pfk_let_recipes_id']},
        {"$addToSet": {"ingredients": {"$each": ingredients_recipe}}},  
    )

# broken_restrictions_recipe
df_recipe_restriction = df_recipe_restriction.groupby('pfk_let_recipes_id')['pfk_let_restrictions_id'].agg(list).reset_index()

for key, val in df_recipe_restriction.iterrows():
    recipes_collection.update_one(
        {"_id": val['pfk_let_recipes_id']},
        {"$addToSet": {"broken_restrictions": {"$each": val['pfk_let_restrictions_id']}}},  
    )

# preparation_methods_recipes
df_preparation_methods = df_preparation_methods.sort_values(['fk_let_recipes_id','step']).groupby('fk_let_recipes_id')['mensage'].agg(list).reset_index()

for key, val in df_preparation_methods.iterrows():
    recipes_collection.update_one(
        {"_id": val['fk_let_recipes_id']},
        {"$addToSet": {"preparation_methods": {"$each": val['mensage']}}},  
    )

# Updating transaction status
cursor.execute(f"UPDATE ingredient SET transaction_made={True} WHERE transaction_made={False}")
cursor.execute(f"UPDATE restriction SET transaction_made={True} WHERE transaction_made={False}")
cursor.execute(f"UPDATE ingredient_restriction SET transaction_made={True} WHERE transaction_made={False}")
cursor.execute(f"UPDATE recipe SET transaction_made={True} WHERE transaction_made={False}")
cursor.execute(f"UPDATE Ingredient_Recipe SET transaction_made={True} WHERE transaction_made={False}")
cursor.execute(f"UPDATE recipe_restriction SET transaction_made={True} WHERE transaction_made={False}")
cursor.execute(f"UPDATE admin SET transaction_made={True} WHERE transaction_made={False}")

cnxn.commit()

# closing connections
cursor.close()
cnxn.close()
client.close()