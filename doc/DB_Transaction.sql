CREATE DATABASE IF NOT EXISTS db_bourse;
USE db_bourse;

CREATE TABLE IF NOT EXISTS `transaction` (
   idTransaction INT AUTO_INCREMENT,
   company VARCHAR(10) NOT NULL,
   price DECIMAL(10,2) NOT NULL,
   direction ENUM('BUY','SELL') NOT NULL,
   timestamp_ DATETIME NOT NULL,
   PRIMARY KEY(idTransaction)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
