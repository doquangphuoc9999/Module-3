use databaseAnalysisAndDesign;


-- Tạo bảng khách hàng
CREATE TABLE customers(
	customer_number int not null,
    name_customer varchar(50) not null,
    phone_number int not null,
    address varchar(150) not null,
    constraint pk_customer primary key(customer_number),
    foreign key(order_number) references Orders(order_number)
); 

-- Tạo bảng loại sản phẩm
CREATE TABLE ProductsLine(
	code_ProductsLine int not null primary key,
	description_ProductsLine varchar(500)
);

-- Tạo bảng sản phẩm
CREATE TABLE Products(
	code_Products int not null ,
    name_Products varchar(150),
    supplier varchar(150),
    stock_number int ,
    price int,
    import_price int,
    constraint pk_products primary key(code_Products),
    foreign key(code_ProductsLine) references ProductsLine(code_ProductsLine)
);

	
-- Tạo bảng đơn khách hàng
CREATE TABLE Orders(
	order_number int not null,
    date_of_Purchas date not null,
    dateOfDeliveryRequest date not null,
    actualDeliveryDate date not null,
    numberOfOrders int not null,
    unitPrice double not null,
    customernumber int not null,
    constraint pk_orders primary key(order_number),
    foreign key(customernumber) references customer(customernumber)
);

CREATE TABLE Odersdetails(
	order_number int not null,
    customer_number int not null,
    foreign key(order_number) references Orders(order_number),
    foreign key(customer_number) references customers(customer_number)	
);

-- Tạo bảng thanh toán
CREATE TABLE Payments(
	code_Payments int primary key,
    DateOfPayment date,
    amount_of_money int
);

-- Tạo bảng nhân viên
CREATE TABLE Employees(
	code_Employees int ,
    name_Employees varchar(50),
    email_Employees varchar(150),
    name_work varchar(50),
    constraint pk_Employees primary key(code_Employees),
	customer_number int not null,
    officecode int not null,
    foreign key(customer_number) references customers(customer_number),
    foreign key(officecode) references Offices(officecode),
    foreign key(code_Employees) references Employees(code_Employees)
    
);


-- Tạo bảng văn phòng
CREATE TABLE Offices(
	officecode int not null,
    address varchar(150),
    phone int,
    nation varchar(150)
);


 
    
    
    

    
	

