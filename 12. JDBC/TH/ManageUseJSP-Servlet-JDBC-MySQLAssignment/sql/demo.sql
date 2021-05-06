CREATE DATABASE DEMO;
USE DEMO;

CREATE TABLE users(
	id int NOT NULL AUTO_INCREMENT,
    nameUser VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL,
    contry VARCHAR(150),
	CONSTRAINT pk_id PRIMARY KEY(id)
);

INSERT INTO users( nameUser, email, contry) VALUE('Phuoc', 'phuoc@gmail.com', 'Hue');
INSERT INTO users( nameUser, email, contry) VALUE('Thang', 'thang@gmail.com', 'Hue');
INSERT INTO users( nameUser, email, contry) VALUE('Hai', 'hai@gmail.com', 'Hue');
INSERT INTO users( nameUser, email, contry) VALUE('thinh', 'thinh@gmail.com', 'Hue');

