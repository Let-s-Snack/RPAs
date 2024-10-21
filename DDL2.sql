# CREATE DATABASE db-lets-snack-2o

DROP TABLE IF EXISTS let_accesses CASCADE;

DROP TABLE IF EXISTS let_access_types CASCADE;

DROP TABLE IF EXISTS let_chat_messages CASCADE;

DROP TABLE IF EXISTS let_chats CASCADE;

DROP TABLE IF EXISTS let_directions_week CASCADE;

DROP TABLE IF EXISTS let_wishlist CASCADE;

DROP TABLE IF EXISTS let_coments CASCADE;

DROP TABLE IF EXISTS let_favorites CASCADE;

DROP TABLE IF EXISTS let_recipes_broken_restrictions CASCADE;

DROP TABLE IF EXISTS let_recipes_ingredients CASCADE;

DROP TABLE IF EXISTS let_recipes CASCADE;

DROP TABLE IF EXISTS let_medition_types CASCADE;

DROP TABLE IF EXISTS let_persons_ingredients CASCADE;

DROP TABLE IF EXISTS let_ingredients_broken_restrictions CASCADE;

DROP TABLE IF EXISTS let_ingredients CASCADE;

DROP TABLE IF EXISTS let_persons_restrictions CASCADE;

DROP TABLE IF EXISTS let_persons CASCADE;

DROP TABLE IF EXISTS let_restrictions CASCADE;

DROP TABLE IF EXISTS let_genders CASCADE;

DROP TABLE IF EXISTS let_preparation_methods CASCADE;

DROP TABLE IF EXISTS let_log_coments CASCADE;

DROP TABLE IF EXISTS let_log_recipes CASCADE;

DROP TABLE IF EXISTS let_log_chats CASCADE;

DROP TABLE IF EXISTS let_log_persons_ingredients CASCADE;

DROP TABLE IF EXISTS let_log_persons_restrictions CASCADE;

DROP TABLE IF EXISTS let_log_persons CASCADE;

DROP TABLE IF EXISTS let_adm CASCADE;

DROP TRIGGER IF EXISTS trg_let_coments_log ON let_coments;

DROP TRIGGER IF EXISTS trg_let_recipes_log ON let_recipes;

DROP TRIGGER IF EXISTS trg_let_chats_log ON let_chats;

DROP TRIGGER IF EXISTS trg_let_persons_ingredients_log ON let_persons_ingredients;

DROP TRIGGER IF EXISTS trg_let_persons_restrictions_log ON let_persons_restrictions;

DROP TRIGGER IF EXISTS trg_let_persons_log ON let_persons;

DROP TRIGGER IF EXISTS trg_calculate_average_rating ON let_coments;

DROP FUNCTION IF EXISTS func_calculate_average_rating;

DROP FUNCTION IF EXISTS func_adm_verificatione;

DROP PROCEDURE IF EXISTS rastrear_usuario;

DROP PROCEDURE IF EXISTS insert_person;

DROP PROCEDURE IF EXISTS insert_recipe_broken_restrictions;

DROP FUNCTION IF EXISTS func_let_coments_log;

DROP FUNCTION IF EXISTS func_let_recipes_log;

DROP FUNCTION IF EXISTS func_let_chats_log;

DROP FUNCTION IF EXISTS func_let_persons_ingredients_log;

DROP FUNCTION IF EXISTS func_let_persons_restrictions_log;

DROP FUNCTION IF EXISTS func_let_persons_log;

CREATE TABLE let_adm (
    pk_id SERIAL CONSTRAINT idx_let_adm_id PRIMARY KEY,
    email VARCHAR(200) NOT null UNIQUE,
    password VARCHAR(100) NOT NULL,
    name VARCHAR(100) not null,
    is_deleted BOOLEAN,
    creation_date TIMESTAMP NOT NULL
);

CREATE TABLE let_genders (
    pk_id SERIAL CONSTRAINT idx_let_genders_id PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    creation_date TIMESTAMP NOT NULL
);

CREATE TABLE let_restrictions (
    pk_id INT CONSTRAINT idx_let_restrictions_id PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    description VARCHAR(1000) NULL,
    is_deleted BOOLEAN,
    url_photo VARCHAR(200) NOT NULL,
    creation_date TIMESTAMP NOT NULL
);

CREATE TABLE let_persons (
    pk_id SERIAL CONSTRAINT idx_let_persons_id PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    nickname VARCHAR(100) NOT NULL,
    url_photo VARCHAR(200) NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    password VARCHAR(40) NOT NULL,
    is_pro BOOLEAN not null,
    registration_completed BOOLEAN NOT NULL,
    fk_let_genders_id INT NOT NULL,
    birth_date DATE NOT NULL,
    cellphone VARCHAR(11) NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    CONSTRAINT idx_fk_let_genders_id FOREIGN KEY (fk_let_genders_id) REFERENCES let_genders (pk_id)
);

CREATE TABLE let_persons_restrictions (
    pfk_let_persons_id INT NOT NULL,
    pfk_let_restrictions_id INT NOT NULL,
    PRIMARY KEY (
        pfk_let_persons_id,
        pfk_let_restrictions_id
    ),
    CONSTRAINT idx_let_persons_restrictions_pfk_let_persons_id FOREIGN KEY (pfk_let_persons_id) REFERENCES let_persons (pk_id),
    CONSTRAINT idx_let_persons_restrictions_pfk_let_restrictions_id FOREIGN KEY (pfk_let_restrictions_id) REFERENCES let_restrictions (pk_id)
);

CREATE TABLE let_ingredients (
    pk_id INT CONSTRAINT idx_let_ingredients_id PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    is_deleted BOOLEAN,
    description VARCHAR(100) not null,
    creation_date TIMESTAMP NOT NULL
);

CREATE TABLE let_ingredients_broken_restrictions (
    pfk_let_ingredients_id INT NOT NULL,
    pfk_let_restrictions_id INT NOT NULL,
    PRIMARY KEY (
        pfk_let_ingredients_id,
        pfk_let_restrictions_id
    ),
    CONSTRAINT idx_let_ingredients_broken_restrictions_pfk_let_ingredients_id FOREIGN KEY (pfk_let_ingredients_id) REFERENCES let_ingredients (pk_id),
    CONSTRAINT idx_let_ingredients_broken_restrictions_pfk_let_restrictions_id FOREIGN KEY (pfk_let_restrictions_id) REFERENCES let_restrictions (pk_id)
);

CREATE TABLE let_persons_ingredients (
    pfk_let_ingredients_id INT NOT NULL,
    pfk_let_persons_id INT NOT NULL,
    PRIMARY KEY (
        pfk_let_ingredients_id,
        pfk_let_persons_id
    ),
    CONSTRAINT idx_let_persons_ingredients_pfk_let_ingredients_id FOREIGN KEY (pfk_let_ingredients_id) REFERENCES let_ingredients (pk_id),
    CONSTRAINT idx_let_persons_ingredients_pfk_let_persons_id FOREIGN KEY (pfk_let_persons_id) REFERENCES let_persons (pk_id)
);

CREATE TABLE let_medition_types (
    pk_id SERIAL CONSTRAINT idx_let_medition_types_id PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    creation_date TIMESTAMP NOT NULL
);

CREATE TABLE let_recipes (
    pk_id INT CONSTRAINT idx_let_recipes_id PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    url_photo VARCHAR(200) NULL,
    is_deleted BOOLEAN,
    average_rating FLOAT NOT null default 0,
    creation_date TIMESTAMP NOT NULL
);

CREATE TABLE let_recipes_ingredients (
    pfk_let_ingredients_id INT NOT NULL,
    pfk_let_recipes_id INT NOT NULL,
    fk_let_medition_types_id INT NOT NULL,
    quantity FLOAT NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    PRIMARY KEY (
        pfk_let_ingredients_id,
        pfk_let_recipes_id
    ),
    CONSTRAINT idx_let_recipes_ingredients_pfk_let_ingredients_id FOREIGN KEY (pfk_let_ingredients_id) REFERENCES let_ingredients (pk_id),
    CONSTRAINT idx_let_recipes_ingredients_pfk_let_recipes_id FOREIGN KEY (pfk_let_recipes_id) REFERENCES let_recipes (pk_id),
    CONSTRAINT idx_let_recipes_ingredients_fk_let_medition_types_id FOREIGN KEY (fk_let_medition_types_id) REFERENCES let_medition_types (pk_id)
);

CREATE TABLE let_recipes_broken_restrictions (
    pfk_let_restrictions_id INT NOT NULL,
    pfk_let_recipes_id INT NOT NULL,
    PRIMARY KEY (
        pfk_let_restrictions_id,
        pfk_let_recipes_id
    ),
    CONSTRAINT idx_let_recipes_broken_restrictions_pfk_let_restrictions_id FOREIGN KEY (pfk_let_restrictions_id) REFERENCES let_restrictions (pk_id),
    CONSTRAINT idx_let_recipes_broken_restrictions_pfk_let_recipes_id FOREIGN KEY (pfk_let_recipes_id) REFERENCES let_recipes (pk_id)
);

CREATE TABLE let_favorites (
    pfk_let_persons_id INT NOT NULL,
    pfk_let_recipes_id INT NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    PRIMARY KEY (
        pfk_let_persons_id,
        pfk_let_recipes_id
    ),
    CONSTRAINT idx_let_favorites_pfk_let_persons_id FOREIGN KEY (pfk_let_persons_id) REFERENCES let_persons (pk_id),
    CONSTRAINT idx_let_favorites_pfk_let_recipes_id FOREIGN KEY (pfk_let_recipes_id) REFERENCES let_recipes (pk_id)
);

CREATE TABLE let_coments (
    pfk_let_persons_id INT NOT NULL,
    pfk_let_recipes_id INT NOT NULL,
    rating INT NOT NULL,
    mensage VARCHAR(200) NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    PRIMARY KEY (
        pfk_let_persons_id,
        pfk_let_recipes_id
    ),
    CONSTRAINT idx_let_coments_pfk_let_persons_id FOREIGN KEY (pfk_let_persons_id) REFERENCES let_persons (pk_id),
    CONSTRAINT idx_let_coments_pfk_let_recipes_id FOREIGN KEY (pfk_let_recipes_id) REFERENCES let_recipes (pk_id)
);

CREATE TABLE let_preparation_methods (
    pk_id SERIAL NOT NULL,
    fk_let_recipes_id INT NOT NULL,
    step INT NOT NULL,
    mensage VARCHAR(1000) NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    PRIMARY KEY (pk_id),
    CONSTRAINT idx_let_preparation_methods_id FOREIGN KEY (fk_let_recipes_id) REFERENCES let_recipes (pk_id)
);

CREATE TABLE let_wishlist (
    pfk_let_persons_id INT NOT NULL,
    pfk_let_recipes_id INT NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    PRIMARY KEY (
        pfk_let_persons_id,
        pfk_let_recipes_id
    ),
    CONSTRAINT idx_let_wishlist_pfk_let_persons_id FOREIGN KEY (pfk_let_persons_id) REFERENCES let_persons (pk_id),
    CONSTRAINT idx_let_wishlist_pfk_let_recipes_id FOREIGN KEY (pfk_let_recipes_id) REFERENCES let_recipes (pk_id)
);

CREATE TABLE let_directions_week (
    pfk_let_persons_id INT NOT NULL,
    pfk_let_recipes_id INT NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    PRIMARY KEY (
        pfk_let_persons_id,
        pfk_let_recipes_id
    ),
    CONSTRAINT idx_let_directions_week_pfk_let_persons_id FOREIGN KEY (pfk_let_persons_id) REFERENCES let_persons (pk_id),
    CONSTRAINT idx_let_directions_week_pfk_let_recipes_id FOREIGN KEY (pfk_let_recipes_id) REFERENCES let_recipes (pk_id)
);

CREATE TABLE let_chats (
    pk_id SERIAL CONSTRAINT idx_let_chats_id PRIMARY KEY,
    fk_let_persons_id INT NOT NULL,
    is_active BOOLEAN not null,
    creation_date TIMESTAMP NOT NULL,
    CONSTRAINT idx_let_chats_fk_let_persons_id FOREIGN KEY (fk_let_persons_id) REFERENCES let_persons (pk_id)
);

CREATE TABLE let_chat_messages (
    pk_id SERIAL CONSTRAINT idx_let_chat_messages_id PRIMARY KEY,
    fk_let_chats_id INT NOT NULL,
    is_user BOOLEAN NOT NULL,
    message VARCHAR(300) NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    CONSTRAINT idx_let_chat_messages_fk_let_chats_id FOREIGN KEY (fk_let_chats_id) REFERENCES let_chats (pk_id)
);

CREATE TABLE let_access_types (
    pk_id SERIAL CONSTRAINT idx_let_access_types_id PRIMARY KEY,
    type VARCHAR(45) not null,
    creation_date TIMESTAMP NOT NULL
);

CREATE TABLE let_accesses (
    pk_id SERIAL CONSTRAINT idx_let_accesses_id PRIMARY KEY,
    fk_let_access_types_id INT NOT NULL,
    fk_let_persons_id INT NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    CONSTRAINT idx_let_persons_fk_let_persons_id FOREIGN KEY (fk_let_persons_id) REFERENCES let_persons (pk_id),
    CONSTRAINT idx_let_access_types_fk_let_access_types_id FOREIGN KEY (fk_let_access_types_id) REFERENCES let_access_types (pk_id)
);

-- CRIANDO TABELAS DE LOG

CREATE TABLE let_log_coments (
    operation_date timestamp NOT NULL,
    operation varchar(80) NOT NULL,
    pg_user varchar(80) NOT NULL,
    pfk_let_persons_id INT NOT NULL,
    pfk_let_recipes_id INT NOT NULL,
    rating INT NOT NULL,
    mensage varchar(200) NOT NULL,
    creation_date timestamp NOT NULL,
    audit_old_value text NULL
);

CREATE TABLE let_log_recipes (
    operation_date timestamp NOT NULL,
    operation varchar(80) NOT NULL,
    pg_user varchar(80) NOT NULL,
    pk_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    description text NOT NULL,
    url_photo varchar(200) NULL,
    average_rating float NOT NULL,
    is_deleted boolean not null,
    creation_date timestamp NOT NULL,
    audit_old_value text NULL
);

CREATE TABLE let_log_chats (
    operation_date timestamp NOT NULL,
    operation varchar(80) NOT NULL,
    pg_user varchar(80) NOT NULL,
    pk_id INT NOT NULL,
    is_active boolean not null,
    fk_let_persons_id INT NOT NULL,
    creation_date timestamp NOT NULL,
    audit_old_value text NULL
);

CREATE TABLE let_log_persons_ingredients (
    operation_date timestamp NOT NULL,
    operation varchar(80) NOT NULL,
    pg_user varchar(80) NOT NULL,
    pfk_let_persons_id INT NOT NULL,
    pfk_let_ingredients_id INT NOT null
);

CREATE TABLE let_log_persons_restrictions (
    operation_date timestamp NOT NULL,
    operation varchar(80) NOT NULL,
    pg_user varchar(80) NOT NULL,
    pfk_let_persons_id INT NOT NULL,
    pfk_let_restrictions_id INT NOT null
);

CREATE TABLE let_log_persons (
    operation_date timestamp NOT NULL,
    operation varchar(80) NOT NULL,
    pg_user varchar(80) NOT NULL,
    pk_id INT NOT NULL,
    name varchar(200) NOT null,
    nickname varchar(200) NOT null,
    url_photo varchar(200) NULL,
    email varchar(200) NOT NULL,
    "password" varchar(40) NOT NULL,
    is_pro bool NOT NULL,
    registration_completed bool NOT NULL,
    fk_let_genders_id int4 NOT NULL,
    birth_date date NOT NULL,
    cellphone varchar(11) NOT NULL,
    creation_date timestamp NOT null,
    audit_old_value text NULL
);
-- TRIGGERS LOG

-- let_coments
CREATE OR REPLACE FUNCTION func_let_coments_log() 
	RETURNS TRIGGER AS $$
	DECLARE
	    pg_user varchar(80);
	    operation varchar(20) := TG_OP;
	    audit_old_value text;
	BEGIN
	    SELECT current_user INTO pg_user;
	    
	    IF (operation = 'UPDATE') THEN
        audit_old_value := 
            CASE 
                WHEN NEW.pfk_let_persons_id <> OLD.pfk_let_persons_id THEN ', pfk_let_persons_id:' || OLD.pfk_let_persons_id::TEXT 
                ELSE '' 
            END ||
            CASE 
                WHEN NEW.pfk_let_recipes_id <> OLD.pfk_let_recipes_id THEN ', pfk_let_recipes_id:' || OLD.pfk_let_recipes_id::TEXT 
                ELSE '' 
            END ||
            CASE 
                WHEN NEW.rating <> OLD.rating THEN ', rating:' || OLD.rating::TEXT 
                ELSE '' 
            END ||
            CASE 
                WHEN NEW.mensage <> OLD.mensage THEN ', mensage:' || OLD.mensage::TEXT 
                ELSE '' 
            END ||
            CASE 
                WHEN NEW.creation_date <> OLD.creation_date THEN ', creation_date:' || OLD.creation_date::TEXT 
                ELSE '' 
            END ;
        INSERT INTO public.let_log_coments
            (operation_date, operation, pg_user, pfk_let_persons_id, pfk_let_recipes_id, rating, mensage, creation_date, audit_old_value)
        VALUES(current_timestamp, operation, pg_user, NEW.pfk_let_persons_id, NEW.pfk_let_recipes_id, NEW.rating, NEW.mensage, NEW.creation_date, audit_old_value);
    
    ELSIF (operation = 'INSERT') THEN
        INSERT INTO public.let_log_coments
            (operation_date, operation, pg_user, pfk_let_persons_id, pfk_let_recipes_id, rating, mensage, creation_date)
        VALUES(current_timestamp, operation, pg_user, NEW.pfk_let_persons_id, NEW.pfk_let_recipes_id, NEW.rating, NEW.mensage, NEW.creation_date);
    
    ELSIF (operation = 'DELETE') THEN
	        INSERT INTO public.let_log_coments
	            (operation_date, operation, pg_user, pfk_let_persons_id, pfk_let_recipes_id, rating, mensage, creation_date)
	        VALUES(current_timestamp, operation, pg_user, OLD.pfk_let_persons_id, OLD.pfk_let_recipes_id, OLD.rating, OLD.mensage, OLD.creation_date);
	    
	    END IF;
	    
	    RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE
OR
REPLACE
    TRIGGER trg_let_coments_log AFTER
INSERT
    OR
UPDATE
OR DELETE ON let_coments FOR EACH ROW
EXECUTE FUNCTION func_let_coments_log ();

-- let_recipes
CREATE OR REPLACE FUNCTION func_let_recipes_log() 
RETURNS TRIGGER AS $$
DECLARE
    pg_user varchar(80);
    operation varchar(20) := TG_OP;
    audit_old_value text;
BEGIN
    SELECT current_user INTO pg_user;
    
    IF (operation = 'UPDATE') THEN
    audit_old_value := 
        CASE 
            WHEN NEW.pk_id <> OLD.pk_id THEN ', pk_id:' || OLD.pk_id::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.name <> OLD.name THEN ', name:' || OLD.name::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.description <> OLD.description THEN ', description:' || OLD.description::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.url_photo <> OLD.url_photo THEN ', url_photo:' || COALESCE(OLD.url_photo::TEXT, '') 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.average_rating <> OLD.average_rating THEN ', average_rating:' || OLD.average_rating::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.is_deleted <> OLD.is_deleted THEN ', is_deleted:' || OLD.is_deleted::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.creation_date <> OLD.creation_date THEN ', creation_date:' || OLD.creation_date::TEXT 
            ELSE '' 
        END;
       
    INSERT INTO public.let_log_recipes
        (operation_date, operation, pg_user, pk_id, name, description, url_photo, average_rating, is_deleted, creation_date, audit_old_value)
    VALUES(current_timestamp, operation, pg_user, NEW.pk_id, NEW.name, NEW.description, NEW.url_photo, NEW.average_rating, new.is_deleted, NEW.creation_date, audit_old_value);

ELSIF (operation = 'INSERT') THEN
    INSERT INTO public.let_log_recipes
        (operation_date, operation, pg_user, pk_id, name, description, url_photo, average_rating, is_deleted, creation_date)
    VALUES(current_timestamp, operation, pg_user, NEW.pk_id, NEW.name, NEW.description, NEW.url_photo, NEW.average_rating, new.is_deleted, NEW.creation_date);
   
ELSIF (operation = 'DELETE') THEN
    INSERT INTO public.let_log_recipes
        (operation_date, operation, pg_user, pk_id, name, description, url_photo, average_rating, is_deleted, creation_date)
    VALUES(current_timestamp, operation, pg_user, OLD.pk_id, OLD.name, OLD.description, OLD.url_photo, OLD.average_rating, old.is_deleted, OLD.creation_date);
   
    RETURN OLD;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE
OR
REPLACE
    TRIGGER trg_let_recipes_log AFTER
INSERT
    OR
UPDATE
OR DELETE ON let_recipes FOR EACH ROW
EXECUTE FUNCTION func_let_recipes_log ();

-- let_chats
CREATE OR REPLACE FUNCTION func_let_chats_log() 
RETURNS TRIGGER AS $$
DECLARE
    pg_user varchar(80);
    operation varchar(20) := TG_OP;
    audit_old_value text;
BEGIN
    SELECT current_user INTO pg_user;
    
    IF (operation = 'UPDATE') THEN
    audit_old_value := 
        CASE 
            WHEN NEW.pk_id <> OLD.pk_id THEN ', pk_id:' || OLD.pk_id::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.fk_let_persons_id <> OLD.fk_let_persons_id THEN ', fk_let_persons_id:' || OLD.fk_let_persons_id::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.is_active <> OLD.is_active THEN ', is_active:' || OLD.is_active::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.creation_date <> OLD.creation_date THEN ', creation_date:' || OLD.creation_date::TEXT 
            ELSE '' 
        END;
       
    INSERT INTO public.let_log_chats
        (operation_date, operation, pg_user, pk_id, fk_let_persons_id, is_active, creation_date, audit_old_value)
    VALUES(current_timestamp, operation, pg_user, NEW.pk_id, NEW.fk_let_persons_id, new.is_active, NEW.creation_date, audit_old_value);

ELSIF (operation = 'INSERT') THEN
    INSERT INTO public.let_log_chats
        (operation_date, operation, pg_user, pk_id, fk_let_persons_id, is_active, creation_date)
    VALUES(current_timestamp, operation, pg_user, NEW.pk_id, NEW.fk_let_persons_id, new.is_active, NEW.creation_date);
   
ELSIF (operation = 'DELETE') THEN
        INSERT INTO public.let_log_chats
            (operation_date, operation, pg_user, pk_id, fk_let_persons_id, is_active, creation_date)
        VALUES(current_timestamp, operation, pg_user, OLD.pk_id, OLD.fk_let_persons_id, old.is_active, OLD.creation_date);
       
        RETURN OLD;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE
OR
REPLACE
    TRIGGER trg_let_chats_log AFTER
INSERT
    OR
UPDATE
OR DELETE ON let_chats FOR EACH ROW
EXECUTE FUNCTION func_let_chats_log ();

-- let_persons_ingredients
CREATE OR REPLACE FUNCTION func_let_persons_ingredients_log() 
RETURNS TRIGGER AS $$
DECLARE
    pg_user varchar(80);
    operation varchar(20) := TG_OP;
BEGIN
    SELECT current_user INTO pg_user;
   
    IF (operation = 'INSERT') THEN
    INSERT INTO public.let_log_persons_ingredients
        (operation_date, operation, pg_user, pfk_let_persons_id, pfk_let_ingredients_id)
    VALUES(current_timestamp, operation, pg_user, NEW.pfk_let_persons_id, NEW.pfk_let_ingredients_id);
   
ELSIF (operation = 'DELETE') THEN
        INSERT INTO public.let_log_persons_ingredients
            (operation_date, operation, pg_user, pfk_let_persons_id, pfk_let_ingredients_id)
        VALUES(current_timestamp, operation, pg_user, OLD.pfk_let_persons_id, OLD.pfk_let_ingredients_id);
       
        RETURN OLD;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE
OR
REPLACE
    TRIGGER trg_let_persons_ingredients_log AFTER
INSERT
    OR DELETE ON let_persons_ingredients FOR EACH ROW
EXECUTE FUNCTION func_let_persons_ingredients_log ();

-- let_persons_restrictions
CREATE OR REPLACE FUNCTION func_let_persons_restrictions_log() 
RETURNS TRIGGER AS $$
DECLARE
    pg_user varchar(80);
    operation varchar(20) := TG_OP;
BEGIN
    SELECT current_user INTO pg_user;
   
    IF (operation = 'INSERT') THEN
    INSERT INTO public.let_log_persons_restrictions
        (operation_date, operation, pg_user, pfk_let_persons_id, pfk_let_restrictions_id)
    VALUES(current_timestamp, operation, pg_user, NEW.pfk_let_persons_id, NEW.pfk_let_restrictions_id);
   
ELSIF (operation = 'DELETE') THEN
        INSERT INTO public.let_log_persons_restrictions
            (operation_date, operation, pg_user, pfk_let_persons_id, pfk_let_restrictions_id)
        VALUES(current_timestamp, operation, pg_user, OLD.pfk_let_persons_id, OLD.pfk_let_restrictions_id);
       
        RETURN OLD;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE
OR
REPLACE
    TRIGGER trg_let_persons_restrictions_log AFTER
INSERT
    OR DELETE ON let_persons_restrictions FOR EACH ROW
EXECUTE FUNCTION func_let_persons_restrictions_log ();

-- let_persons
CREATE OR REPLACE FUNCTION func_let_persons_log() 
RETURNS TRIGGER AS $$
DECLARE
    pg_user varchar(80);
    operation varchar(20) := TG_OP;
    audit_old_value text;
BEGIN
    SELECT current_user INTO pg_user;
    
    IF (operation = 'UPDATE') THEN
    audit_old_value := 
        CASE 
            WHEN NEW.pk_id <> OLD.pk_id THEN ', pk_id: ' || OLD.pk_id::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.name <> OLD.name THEN ', name: ' || OLD.name::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.nickname  <> OLD.nickname  THEN ', nickname: ' || OLD.nickname ::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.url_photo  <> OLD.url_photo  THEN ', url_photo: ' || OLD.url_photo ::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.email  <> OLD.email  THEN ', email: ' || OLD.email ::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.password <> OLD.password THEN ', password: ' || OLD.password::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.is_pro  <> OLD.is_pro  THEN ', is_pro: ' || OLD.is_pro ::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.registration_completed <> OLD.registration_completed  THEN ', registration_completed: ' || OLD.registration_completed ::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.fk_let_genders_id <> OLD.fk_let_genders_id THEN ', fk_let_genders_id: ' || OLD.fk_let_genders_id ::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.birth_date  <> OLD.birth_date  THEN ', birth_date: ' || OLD.birth_date ::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.cellphone  <> OLD.cellphone  THEN ', cellphone: ' || OLD.cellphone ::TEXT 
            ELSE '' 
        END ||
        CASE 
            WHEN NEW.creation_date <> OLD.creation_date THEN ', creation_date: ' || OLD.creation_date::TEXT 
            ELSE '' 
        END;
       
   INSERT INTO public.let_log_persons
		(operation_date, operation, pg_user, pk_id, "name", nickname, url_photo, email, "password", is_pro, registration_completed, fk_let_genders_id, birth_date, cellphone, creation_date, audit_old_value)
	VALUES(current_timestamp, operation , pg_user , new.pk_id, new.name, new.nickname, new.url_photo, new.email, new.password, new.is_pro, new.registration_completed, new.fk_let_genders_id, new.birth_date, new.cellphone, new.creation_date, audit_old_value);

ELSIF (operation = 'INSERT') THEN
   INSERT INTO public.let_log_persons
  		(operation_date, operation, pg_user, pk_id, "name", nickname, url_photo, email, "password", is_pro, registration_completed, fk_let_genders_id, birth_date, cellphone, creation_date)
   VALUES(current_timestamp, operation , pg_user , new.pk_id, new.name, new.nickname, new.url_photo, new.email, new.password, new.is_pro, new.registration_completed, new.fk_let_genders_id, new.birth_date, new.cellphone, new.creation_date);
     
ELSIF (operation = 'DELETE') THEN
   INSERT INTO public.let_log_persons
  		(operation_date, operation, pg_user, pk_id, "name", nickname, url_photo, email, "password", is_pro, registration_completed, fk_let_genders_id, birth_date, cellphone, creation_date)
	   VALUES(current_timestamp, operation , pg_user , old.pk_id, old.name, old.nickname, old.url_photo, old.email, old.password, old.is_pro, old.registration_completed, old.fk_let_genders_id, old.birth_date, old.cellphone, old.creation_date);
       
        RETURN OLD;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE
OR
REPLACE
    TRIGGER trg_let_persons_log AFTER
INSERT
    OR
update
or DELETE ON let_persons FOR EACH ROW
EXECUTE FUNCTION func_let_persons_log ();

-- Procedures

-- Adiciona em uma tabela quais partes (login, receitas da semana, wishlist, etc) do app o usuario acessou.
CREATE OR REPLACE PROCEDURE rastrear_usuario(access_type varchar, person_id int) as 
$$
declare
	access_type_id int;
begin
	access_type_id := (select pk_id from let_access_types where "type" like INITCAP(access_type));
	if access_type_id is null then
		insert into let_access_types (type, creation_date) values (INITCAP(access_type), current_timestamp) returning pk_id into access_type_id;
	end if;

	insert into let_accesses(fk_let_access_types_id, fk_let_persons_id, creation_date) values (access_type_id, person_id, current_timestamp);
END;
$$ LANGUAGE plpgsql;
-- call rastrear_usuario('Login', 1);

-- Insere um cadastro completo de usuário, passando para as tabelas relacionais listas.
CREATE OR REPLACE PROCEDURE insert_person(
	person_name varchar, gender_id int, is_pro bool, registration_completed bool, nickname varchar, pwd varchar, 
	email varchar,  url_photo varchar, birth_date date, cellphone varchar, restrictions int[], ingredients int[]
) as 
$$
declare 
	person_id int := (SELECT pk_id FROM let_persons ORDER BY pk_id DESC LIMIT 1) + 1;
	item int;
begin 
	INSERT INTO public.let_persons(
	pk_id, "name", nickname, url_photo, email, "password", is_pro, registration_completed, fk_let_genders_id, birth_date, cellphone, creation_date)
values (person_id, person_name, nickname, url_photo, email, pwd, is_adm, is_pro, registration_completed, gender_id, birth_date, cellphone, current_timestamp);

FOR i IN 1 .. array_length(restrictions, 1) LOOP
    item := restrictions[i];
   	if NOT exists (select pk_id from let_restrictions li where pk_id = item) then
   		raise exception 'Ingrediente com ID % não existe', item;
   	end if;
   
   	INSERT INTO public.let_persons_restrictions(pfk_let_persons_id, pfk_let_restrictions_id)
	VALUES(person_id, item);
end loop;

FOR i IN 1 .. array_length(ingredients, 1) LOOP
    item := ingredients[i];
   	if NOT exists (select pk_id from let_ingredients lr where pk_id = item) then
   		raise exception 'Restrição com ID % não existe', item;
       	end if;
       
       	INSERT INTO public.let_persons_ingredients(pfk_let_persons_id, pfk_let_ingredients_id)
		VALUES(person_id, item);
    END LOOP;
END;
$$ LANGUAGE plpgsql;

-- Calcula as restrições da receita com base nas restrições dos ingredientes dele.
CREATE OR REPLACE PROCEDURE insert_recipe_broken_restrictions(recipe_id int) as 
$$
begin
	delete from let_recipes_broken_restrictions where pfk_let_recipes_id = recipe_id;
	
	INSERT INTO let_recipes_broken_restrictions (pfk_let_restrictions_id, pfk_let_recipes_id)
	SELECT DISTINCT libr.pfk_let_restrictions_id, recipe_id
	FROM let_recipes lr
	JOIN let_recipes_ingredients lri ON lr.pk_id = lri.pfk_let_recipes_id
	JOIN let_ingredients_broken_restrictions libr ON libr.pfk_let_ingredients_id = lri.pfk_let_ingredients_id
	WHERE lr.pk_id = recipe_id;
END;
$$ LANGUAGE plpgsql;
--call insert_recipe_broken_restrictions(1)

--Triggers

-- Trigger para atualizar a média de avaliação da receita - EXTRA
CREATE OR REPLACE FUNCTION func_calculate_average_rating() 
RETURNS TRIGGER AS $$
DECLARE
	avg_rating float;
begin
	IF (TG_OP = 'DELETE') THEN
		avg_rating := (select AVG(rating)::float from let_coments lc 
					  where old.pfk_let_recipes_id = lc.pfk_let_recipes_id);
					 
		update let_recipes set average_rating = avg_rating where old.pfk_let_recipes_id = pk_id;
	else
		avg_rating := (select AVG(rating)::float from let_coments lc 
					  where new.pfk_let_recipes_id = lc.pfk_let_recipes_id);
					 
		update let_recipes set average_rating = avg_rating where new.pfk_let_recipes_id = pk_id;
	
	end if;
	
	return new;
END;
$$ LANGUAGE plpgsql;

CREATE
OR
REPLACE
    TRIGGER trg_calculate_average_rating AFTER
INSERT
    OR
update
or DELETE ON let_coments FOR EACH ROW
EXECUTE FUNCTION func_calculate_average_rating ();

-- Fuctions
CREATE OR REPLACE FUNCTION func_adm_verificatione(email_input varchar, pwd_input varchar)
RETURNS TABLE (
    email varchar,
    is_adm boolean
) AS $$
DECLARE
    tableAdm int;
BEGIN
    SELECT COUNT(pk_id) 
    INTO tableAdm
    FROM let_adm la
    WHERE la.email = email_input AND la.password = pwd_input;
   
    IF tableAdm = 1 THEN
        is_adm := true;
    ELSE
        is_adm := false;
    END IF;

    RETURN QUERY
    SELECT email_input, is_adm;

END;
$$ LANGUAGE plpgsql;