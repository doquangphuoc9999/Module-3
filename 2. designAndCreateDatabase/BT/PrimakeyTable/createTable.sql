use manageBank;

CREATE TABLE Customers(
	customer_code int not null primary key,
    fullName varchar(50),
    addresss varchar(150),
    email varchar(50),
    phone int
);

CREATE TABLE accounts(
	account_number int not null primary key,
    account_type varchar(50),
    date_openAccount date,
	balence double
    
);

CREATE TABLE Transactions(
	tran_number int not null,
    account_number int,
    date_transactions date,
    amounts double,
    descriptions varchar(50)
);

ALTER TABLE Transactions
	add constraint pk_Transactions primary key(tran_number);

ALTER TABLE accounts
	add column customer_code int not null;
   
ALTER TABLE accounts
	add foreign key(customer_code) references Customers(customer_code);
    
	
    
ALTER TABLE Transactions
	add foreign key(account_number) references accounts(account_number)	;
	
    
    