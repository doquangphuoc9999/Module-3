CREATE DATABASE blogdemo;
USE blogdemo;

DROP DATaBASE blogdemo;
CREATE TABLE category(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nameCategory VARCHAR(50) NOT NULL
);
INSERT INTO category(nameCategory) VALUES ("Văn học"); 

UPDATE category SET nameCategory = "lịch sử" WHERE id = 1; 
CREATE TABLE post(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title TEXT NOT NULL,
    fullContent Longtext NOT NULL,
    shortContent VARCHAR(2500) NOT NULL,
    publisht	 DATETIME DEFAULT now(),
    image VARCHAR(500) NOT NULL,
    idCategory INT NOT NULL,
    idAuthor INT NOT NULL,
    CONSTRAINT fk_category FOREIGN KEY(idCategory) REFERENCES category(id),
    CONSTRAINT fk_author FOREIGN KEY(idAuthor) REFERENCES author(id)
);
CREATE TABLE Users(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(250) NOT NULL,
    passwordUser VARCHAR(250) NOT NULL,
    fullName VARCHAR(250) NOT NULL,
    statusUser TINYINT,
    is_delete BIT 
);
INSERT INTO Users(userName, passwordUser, fullName, statusUser) VALUES ("Babies@gmail.com", "123123","babies Thang", 0);


INSERT INTO Users(userName, passwordUser, fullName, statusUser) VALUES ("Son@gmail.com", "12345","babies son", 0);

select post.*,  nameCategory, name from(post left join category on post.idCategory = category.id) left join author on post.idAuthor =author.id order by rand() limit 3 ;

select post.*,  nameCategory, name from(post left join category on post.idCategory = category.id) left join author on post.idAuthor =author.id where post.idCategory = 3;

select * from Users;
DELETE FROM category WHERE id = 6;
insert into category (nameCategory) values ("Nhan van");
create table `author`(
id int primary key auto_increment,
`name` varchar(100) not null
);

DROP table users;
CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nameUser VARCHAR(50) NOT NULL,
    passwordUser VARCHAR(100) NOT NULL,
    emai VARCHAR(100) NOT NULL
);
UPDATE author SET name = "Phước đẹp trai" WHERE id = 1;

DELETE from users where id =  11;
INSERT INTO author(name) VALUES ("Quang Phuoc");
select * from author;
select * from category WHERE id = 1;
select * from post;


SELECT post.*,category.nameCategory,author.name from (post left join category ON post.idCategory = category.id) left join author on post.idAuthor =  author.id;

SELECT post.*,category.nameCategory,author.name from (post left join category ON post.idCategory = category.id) left join author on post.idAuthor =  author.id order by post.id desc;

INSERT INTO post(title, fullContent, shortContent, image, idCategory, idAuthor) VALUES ("kaka", "Lấy xe đi học", "vui ghê", "adshdsgadsja", 2, 2);

update post set title = "Văn học thời nay", fullContent = "dui quá là dui", shortContent = "hahaha", image = "https://cdn.24h.com.vn/upload/4-2020/images/2020-10-25/Thien-than-sexy-phim-18--la-yua-mikami-4-1603597572-474-width660height616.jpg"  where id = 6;
SELECT post.*,category.nameCategory,author.name from (post left join category ON post.idCategory = category.id) left join author on post.idAuthor =  author.id WHERE post.id = 1;
            
select count(post.id) from post,o;
update post set image = "https://scontent-hkg4-1.xx.fbcdn.net/v/t1.0-9/126264530_751448109097594_844752834886523760_n.jpg?_nc_cat=102&ccb=3&_nc_sid=8bfeb9&_nc_ohc=v1zUJ0LNOW4AX_yuJzA&_nc_ht=scontent-hkg4-1.xx&oh=06f7534240428b1890b7b353cd870825&oe=605ACD00" where id =1;
