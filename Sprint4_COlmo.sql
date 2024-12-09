CREATE DATABASE sales;

USE sales;
CREATE TABLE companies (
	company_id VARCHAR(20) PRIMARY KEY NOT NULL, 
    company_name VARCHAR (100),
    phone VARCHAR (50),
    email VARCHAR (100),
    country VARCHAR (100),
    website VARCHAR (255)
    );

CREATE TABLE products(
	id varchar(20) PRIMARY KEY NOT NULL,
    product_name VARCHAR(100),
	price VARCHAR(20),
    colour VARCHAR(50),
    weight FLOAT,
    warehouse_id VARCHAR(20)
);

CREATE TABLE users(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    surname VARCHAR(100),
    phone VARCHAR(50),
    email VARCHAR(100),
    birth_date VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100),
    postal_code VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE credit_card (
	id VARCHAR(50) PRIMARY KEY NOT NULL,
    user_id INT,
    iban VARCHAR(100) NOT NULL UNIQUE,
    pan VARCHAR (50),
    pin VARCHAR (5), 
    cvv INT,
    track1 VARCHAR(255),
    track2 VARCHAR(255),
    expiring_date VARCHAR(10),
	FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE transactions(
	id VARCHAR(50) PRIMARY KEY NOT NULL, 
    card_id VARCHAR(20),
    business_id VARCHAR(20), 
    timestamp TIMESTAMP, 
    amount FLOAT,
    declined BOOLEAN,
    products_id VARCHAR(255),
    user_id INT,
    lat FLOAT,
    longitude FLOAT, 
	FOREIGN KEY (card_id) REFERENCES credit_card(id),
    FOREIGN KEY (business_id) REFERENCES companies(company_id),
    FOREIGN KEY(products_id) REFERENCES products(id),
    FOREIGN KEY(user_id) REFERENCES users(id));
/*
SET FOREIGN_KEY_CHECKS = 0;
-- Realiza la inserción o importación
SET FOREIGN_KEY_CHECKS = 1; */