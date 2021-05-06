CREATE DATABASE countryUser;

USE countryUser;

CREATE TABLE users(
	id INT NOT NULL AUTO_INCREMENT,
    nameUser VARCHAR(50) NOT NULL,
    ageUser INT NOT NULL,
    email VARCHAR(50) NOT NULL,
	country_id INT NOT NULL,
	PRIMARY KEY users(id),
    foreign key(country_id) references country(id)
);
SELECT * FROM users inner join country on users.country_id = country.id where nameCountry like '%IA%';
SELECT * FROM users ;
CREATE TABLE country(
	id INT NOT NULL AUTO_INCREMENT,
    nameCountry VARCHAR(50) NOT NULL,
    PRIMARY KEY country(id)
);

SELECT users.*, country.nameCountry AS country FROM users LEFT JOIN country ON  users.id =  country.id  WHERE country.nameCountry = ?;
SELECT * FROM users WHERE users = "RUSIA";

SELECT users.*, country.nameCountry  as country FROM users INNER JOIN country ON users.country_id = country.id;
SELECT users.*, country.nameCountry  as country FROM users Left JOIN country ON users.country_id = country.id;

SELECT * FROM country ;

CALL sp_get_user_by_id(1);
insert into users(nameUser,ageUser,email,country_id) values ("Phuoc",20,"Phuocs@gmail.com",1);
insert into users(nameUser,ageUser,email,country_id) values ("Phuoc",20,"Phuocs@gmail.com",2);

insert into country(nameCountry) values ("Viet Name"),("RUSIA");
UPDATE users SET nameUser ='Hoang', ageUser = 19,email = 'giang@gmail.com', country_id = 2 WHERE id = 2;

DELETE FROM users WHERE id = ?;