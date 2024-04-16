DROP TABLE IF EXISTS Messages CASCADE;
DROP TABLE IF EXISTS Plants CASCADE;
DROP TABLE IF EXISTS Accounts CASCADE;
DROP TABLE IF EXISTS Categories CASCADE;

CREATE TABLE Messages (
    id SERIAL PRIMARY KEY,
    username TEXT,
    content TEXT NOT NULL
);

CREATE TABLE Accounts (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE,
    password TEXT,
    rights TEXT
);

CREATE TABLE Plants (
    id SERIAL PRIMARY KEY, 
    name TEXT,
    price INTEGER,
    category_id INTEGER
);

CREATE TABLE Categories (
    id SERIAL PRIMARY KEY, 
    name TEXT
);

INSERT INTO Categories (name) VALUES ('Nahkealehtiset kasvit');
INSERT INTO Categories (name) VALUES ('Kukat');
INSERT INTO Categories (name) VALUES ('Köynnöskasvit');
