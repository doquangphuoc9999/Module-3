use createPrimakey;

CREATE TABLE uses(
	uses_id int auto_increment primary key,
	uses_name varchar(50),
    password varchar(255),
    email varchar(50)
);

CREATE TABLE roles(
	role_id int auto_increment,
	role_name varchar(50),
    primary key(role_id)
);

CREATE TABLE userroles(
	user_id int not null ,
    role_id int not null,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(role_id) REFERENCES roles(role_id)
);

