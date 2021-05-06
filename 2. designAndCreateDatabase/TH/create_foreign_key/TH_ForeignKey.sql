use foreign_key;

CREATE TABLE customers(
	id int auto_increment not null primary key,
    name varchar(40),
    address varchar(255),
    email varchar(255)
);

ALTER TABLE customers
	rename column id to customer_id;

CREATE TABLE oder(
	id int auto_increment not null,
    staff varchar(50),
    primary key(id),
    customer_id int,
    constraint fk_oder foreign key(customer_id) references customers(customer_id)
);