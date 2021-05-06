use manages;
CREATE TABLE contacts(
	contact_id int NOT NULL auto_increment,
    last_name varchar(30) NOT NULL,
    first_name varchar(30),
    birdthday DATE,
    constraint contact_pk primary key(contact_id)
);

CREATE TABLE suppliers(
	suppliers_id int NOT NULL auto_increment,
    suppliers_name varchar(50) NOT NULL default 'TBD',
    constraint suppliers_pk primary key(suppliers_id)
);

ALTER TABLE contacts
	add gender varchar(15);
    
    
ALTER TABLE suppliers  
	add age int after suppliers_name,
    add score double after age;
    
ALTER TABLE contacts
	modify last_name varchar(50);
    
ALTER TABLE contacts
	change column birdthday age int;	
    
ALTER TABLE contacts
	RENAME TO phuoc;
    
    

