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
	id VARCHAR(20) PRIMARY KEY NOT NULL,
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
    cvv INT, #modificar
    track1 VARCHAR(255),
    track2 VARCHAR(255),
    expiring_date VARCHAR(10)
);

CREATE TABLE transactions(
	id VARCHAR(50) PRIMARY KEY NOT NULL, 
    card_id VARCHAR(20),
    business_id VARCHAR(20), 
    timestamp TIMESTAMP, 
    amount DECIMAL (10,2),
    declined BOOLEAN,
    products_id VARCHAR(255),
    user_id INT,
    lat FLOAT,
    longitude FLOAT, 
	FOREIGN KEY (card_id) REFERENCES credit_card(id),
    FOREIGN KEY (business_id) REFERENCES companies(company_id),
    FOREIGN KEY(user_id) REFERENCES users(id));


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/companies.csv'
INTO TABLE companies
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users_ca.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users_uk.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users_usa.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_cards.csv'
INTO TABLE credit_card
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/transactions.csv'
INTO TABLE transactions
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- Verificar que los datos se han cargado correctamente
SELECT * FROM sales.companies;
SELECT * FROM sales.users;
SELECT * FROM sales.credit_card;
SELECT * FROM sales.transactions;
SELECT * FROM sales.products;


# NIVELL 1
#Exercici 1
#Realitza una subconsulta que mostri tots els usuaris amb més de 30 transaccions utilitzant almenys 2 taules.
SELECT t.user_id, COUNT(t.id) AS total_transactions
FROM transactions AS t
WHERE t.user_id IN (SELECT u.id 
					FROM users AS u)
GROUP BY t.user_id
HAVING total_transactions > 30;

#Exercici 2
#Mostra la mitjana d'amount per IBAN de les targetes de crèdit a la companyia Donec Ltd, utilitza almenys 2 taules.
SELECT ROUND(avg(t.amount),2) AS avg_amount, cd.iban, c.company_name
FROM transactions AS t
JOIN credit_card AS cd
	ON t.card_id = cd.id
		LEFT JOIN companies AS c
			ON c.company_id = t.business_id
WHERE c.company_name LIKE 'Donec Ltd'
GROUP BY 2,3;

# NIVELL 2
#Crea una nova taula que reflecteixi l'estat de les targetes de crèdit basat en si les últimes tres transaccions van ser declinades 
#i genera la següent consulta:
CREATE VIEW cards_status AS 
SELECT t.card_id, t.declined,  
CASE    
	WHEN t.declined = 'N'THEN 'Activa'   
    ELSE 'No válida'         
    END AS card_status FROM transactions AS t 
JOIN (SELECT *,  ROW_NUMBER() OVER (PARTITION BY card_id ORDER BY timestamp DESC) as last_transactions  
FROM transactions     
WHERE card_id IN (SELECT cc.id       
						FROM credit_card AS cc)) AS last3_transactions 
ON last3_transactions.id = t.id 
WHERE last_transactions <= 3  
AND t.declined = 'N' 
GROUP BY 2, 1;

#Exercici 1
#Quantes targetes estan actives?
SELECT *
FROM cards_status;

SELECT cc.id, expiring_date
FROM cards_status
	JOIN credit_card AS cc
	ON cc.id = cards_status.card_id
WHERE STR_TO_DATE(expiring_date, '%d/%m/%y') > CURDATE();

#NIVELL 3
#Exercici 1
#Necessitem conèixer el nombre de vegades que s'ha venut cada producte.

CREATE TABLE products_numbers (
products_id VARCHAR(20),
transaction_id VARCHAR(50),
FOREIGN KEY (transaction_id) REFERENCES transactions(id),
FOREIGN KEY (products_id) REFERENCES products(id)
);

INSERT INTO products_numbers (products_id, transaction_id)
SELECT p.id AS products_id, t.id AS transaction_id
FROM transactions AS t
JOIN products AS p 
ON FIND_IN_SET(p.id, REPLACE(t.products_id, ' ', '')) > 0
WHERE t.declined = 0;


SELECT pn.products_id, COUNT(pn.products_id) AS total_products_sold, p.price
FROM products_numbers AS pn
JOIN products AS p
ON p.id = pn.products_id
GROUP BY 1;