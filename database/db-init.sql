-- Create the database if it doesn't exist
-- Create the 'sad' user and grant privileges
CREATE USER IF NOT EXISTS 'sad'@'%' IDENTIFIED BY 'cibersad';
GRANT ALL PRIVILEGES ON *.* TO 'sad'@'%';
FLUSH PRIVILEGES;

-- Create the ecomdb database and setup
CREATE DATABASE IF NOT EXISTS ecomdb;
USE ecomdb;

CREATE TABLE IF NOT EXISTS products (
    id MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
    Name VARCHAR(255) DEFAULT NULL,
    Price VARCHAR(255) DEFAULT NULL,
    ImageUrl VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (id)
) AUTO_INCREMENT=1;

INSERT INTO products (Name, Price, ImageUrl) 
VALUES 
    ("Laptop", "100", "c-1.png"),
    ("Drone", "200", "c-2.png"),
    ("VR", "300", "c-3.png"),
    ("Tablet", "50", "c-5.png"),
    ("Watch", "90", "c-6.png"),
    ("Phone Covers", "20", "c-7.png"),
    ("Phone", "80", "c-8.png"),
    ("Laptop", "150", "c-4.png");

-- Create the sampledb database and setup
CREATE DATABASE IF NOT EXISTS sampledb;
USE sampledb;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);