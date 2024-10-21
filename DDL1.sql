# CREATE DATABASE db-lets-snack-1o

-- Dropando tabelas se existirem
DROP TABLE IF EXISTS Additional_Ingredient;

DROP TABLE IF EXISTS Ingredient_Recipe;

DROP TABLE IF EXISTS Ingredient_Restriction;

DROP TABLE IF EXISTS User_Restriction;

DROP TABLE IF EXISTS Recipe_Restriction;

DROP TABLE IF EXISTS Wishlist;

DROP TABLE IF EXISTS Rating;

DROP TABLE IF EXISTS Favorites;

DROP TABLE IF EXISTS Chat_Message;

DROP TABLE IF EXISTS Chat_IA;

DROP TABLE IF EXISTS Dish_of_The_Week;

DROP TABLE IF EXISTS Recipe;

DROP TABLE IF EXISTS Ingredient;

DROP TABLE IF EXISTS Restriction;

DROP TABLE IF EXISTS Person;

DROP TABLE IF EXISTS Admin;

CREATE TABLE Admin (
    email varchar(200) NOT NULL PRIMARY KEY,
    password varchar(50) NOT NULL,
    name varchar(100) NOT null,
    is_deleted BOOLEAN DEFAULT FALSE,
    is_updated BOOLEAN default false,
    transaction_made BOOLEAN DEFAULT FALSE
);

CREATE TABLE Person (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    name VARCHAR(50),
    gender CHAR(1) CHECK (gender IN ('F', 'M', 'O')),
    password VARCHAR(100) NOT NULL CHECK (LENGTH(password) >= 6),
    subscription BOOLEAN,
    phone VARCHAR(11),
    image_url VARCHAR(100) DEFAULT 'https://exemplo.com/imagem_padrao.jpg',
    nickname VARCHAR(15) NOT NULL,
    is_adm BOOLEAN DEFAULT FALSE,
    registration_completed BOOLEAN,
    transaction_made BOOLEAN DEFAULT FALSE,
    birth_date DATE
);

CREATE TABLE Restriction (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    is_updated BOOLEAN DEFAULT FALSE,
    image_url VARCHAR(100) DEFAULT 'https://exemplo.com/imagem_padrao.jpg',
    transaction_made BOOLEAN DEFAULT FALSE,
    description VARCHAR(300)
);

CREATE TABLE Ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    description VARCHAR(100) NOT NULL,
    is_updated BOOLEAN DEFAULT FALSE,
    transaction_made BOOLEAN DEFAULT FALSE
);

CREATE TABLE Recipe (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    image_url VARCHAR(100) DEFAULT 'https://exemplo.com/imagem_padrao.jpg',
    steps VARCHAR(750),
    is_updated BOOLEAN DEFAULT FALSE,
    transaction_made BOOLEAN DEFAULT FALSE,
    description VARCHAR(400)
);

CREATE TABLE Dish_of_The_Week (
    id SERIAL PRIMARY KEY,
    exp_day DATE NOT NULL,
    recipe_id INT NOT NULL,
    person_id INT NOT NULL,
    FOREIGN KEY (recipe_id) REFERENCES Recipe (id),
    FOREIGN KEY (person_id) REFERENCES Person (id),
    transaction_made BOOLEAN DEFAULT FALSE,
    available BOOLEAN DEFAULT TRUE
);

CREATE TABLE Chat_IA (
    id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    transaction_made BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (person_id) REFERENCES Person (id)
);

CREATE TABLE Chat_Message (
    id SERIAL PRIMARY KEY,
    chat_ia_id INT NOT NULL,
    is_user BOOLEAN,
    creation_date TIMESTAMP,
    message VARCHAR(200),
    transaction_made BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (chat_ia_id) REFERENCES Chat_IA (id)
);

CREATE TABLE Rating (
    id SERIAL PRIMARY KEY,
    recipe_id INT NOT NULL,
    person_id INT NOT NULL,
    text VARCHAR(200),
    score INT NOT NULL CHECK (
        score > 0
        AND score < 6
    ),
    image_url VARCHAR(200),
    transaction_made BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe (id),
    FOREIGN KEY (person_id) REFERENCES Person (id)
);

CREATE TABLE Wishlist (
    id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    recipe_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES Person (id),
    FOREIGN KEY (recipe_id) REFERENCES Recipe (id),
    transaction_made BOOLEAN DEFAULT FALSE
);

CREATE TABLE Favorites (
    id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    recipe_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES Person (id),
    FOREIGN KEY (recipe_id) REFERENCES Recipe (id),
    transaction_made BOOLEAN DEFAULT FALSE
);

CREATE TABLE User_Restriction (
    id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    restriction_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES Person (id),
    FOREIGN KEY (restriction_id) REFERENCES Restriction (id),
    transaction_made BOOLEAN DEFAULT FALSE
);

CREATE TABLE Ingredient_Restriction (
    id SERIAL PRIMARY KEY,
    restriction_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (restriction_id) REFERENCES Restriction (id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient (id),
    transaction_made BOOLEAN DEFAULT FALSE
);

CREATE TABLE Ingredient_Recipe (
    id SERIAL PRIMARY KEY,
    ingredient_id INT NOT NULL,
    recipe_id INT NOT NULL,
    measure VARCHAR(50),
    is_updated BOOLEAN DEFAULT FALSE,
    is_deleted BOOLEAN DEFAULT FALSE,
    quantity INT,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient (id),
    FOREIGN KEY (recipe_id) REFERENCES Recipe (id),
    transaction_made BOOLEAN DEFAULT FALSE
);

CREATE TABLE Additional_Ingredient (
    id SERIAL PRIMARY KEY,
    ingredient_id INT,
    person_id INT,
    measure VARCHAR(20),
    quantity INT,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient (id),
    FOREIGN KEY (person_id) REFERENCES Person (id),
    transaction_made BOOLEAN DEFAULT FALSE
);

CREATE TABLE Recipe_Restriction (
    id SERIAL PRIMARY KEY,
    restriction_id INT NOT NULL,
    recipe_id INT NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe (id),
    FOREIGN KEY (restriction_id) REFERENCES Restriction (id),
    transaction_made BOOLEAN DEFAULT FALSE
);