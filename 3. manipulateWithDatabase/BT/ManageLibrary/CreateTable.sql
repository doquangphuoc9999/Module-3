USE manageLibrary;

CREATE TABLE book(
	id_book INT NOT NULL AUTO_INCREMENT,
    name_book varchar(50),
    price_book double,
    id_Category int NOT NULL,
    author varchar(50),
    book_description varchar(500),
    date_of_publication date,
    FOREIGN KEY(id_Category) references Category(id_Category),
    CONSTRAINT pk_book primary key(id_book)
);
ALTER TABLE book
	ADD FOREIGN KEY(book_loan_card) REFERENCES book_loan_card(book_loan_card);
    
ALTER TABLE book
	ADD COLUMN book_loan_card VARCHAR(50) NOT NULL;


CREATE TABLE Category(
	id_Category int not null,
    name_category varchar(150),
    CONSTRAINT pk_category PRIMARY KEY(id_Category)
);

CREATE TABLE Student(
	ID_Student INT NOT NULL AUTO_INCREMENT,
    name_Student VARCHAR(50) NOT NULL,
    age_Student int NOT NULL,
    gender_Student VARCHAR(30),
    CONSTRAINT pk_Student PRIMARY KEY(ID_Student)
);

CREATE TABLE book_loan_card(
	ID_Student INT NOT null,
	book_loan_card VARCHAR(50) NOT NULL,
    date_borrowed DATE NOT NULL,
    ID_Book INT NOT NULL,
    date_return DATE NOT NULL,
    CONSTRAINT pk_borrowed PRIMARY KEY(book_loan_card),
    FOREIGN KEY(ID_Student) REFERENCES Student(ID_Student)
)