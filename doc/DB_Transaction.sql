CREATE DATABASE db_bourse;
USE DATABASE db_bourse;

CREATE TABLE transaction(
   idTransaction INT,
   company VARCHAR(5) NOT NULL,
   price DECIMAL(10,2) NOT NULL,
   direction VARCHAR(5) NOT NULL,
   timestamp_ DATETIME NOT NULL,
   PRIMARY KEY(idTransaction)
);
