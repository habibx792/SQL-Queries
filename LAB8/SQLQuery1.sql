create Database OrderPlaceMent;
use OrderPlaceMent;
create table Cutommer_table
(
	CusomerID int primary Key,
	CutomerName varchar(50) not null,
	CustomerAdrress varchar(40),
	CustomerCity varchar(40),
	CustomerState  varchar(20),
	CustomerPostalCode int 
);
CREATE TABLE OrderTable
(
	OrderID INT PRIMARY KEY, 
	OrderDate DATE NOT NULL,
	customerID INT,
	CONSTRAINT FK FOREIGN KEY (customerID) REFERENCES Cutommer_table(cusomerID) 
);
CREATE TABLE PRODUCTLINE
(
	ProductLineID int primary key ,
	ProductLineName varchar(49)
);
CREATE TABLE PRODUCTTABLE
(
	ProductID int primary key,
	ProductDescription Varchar(50) not null,
	ProductFinish varchar(30),
	ProductStandardPrice int,
	ProductLineID int,
	foreign key(ProductLineID) references PRODUCTLINE(ProductLineID)
);

Create Table ORDERLINE_TAVLE
(
	OrderID int,
	ProductID int,
	primary key(OrderID,ProductID),
	OrderQuantity int not null,
	foreign key(OrderID) references OrderTable(OrderID),
	foreign key(ProductID) references PRODUCTTABLE(ProductID)
);

