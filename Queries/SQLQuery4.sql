use LibraryDB;
create table cutomer
(
	customerID int primary key,
	customeName varchar(50) not null,
	customerAddress varchar(60) not null
);
create table orderTable
(
	orderID int primary key,
	orderDate date default getdate(),
	customerID int,
	foreign key (customerID) references cutomer(customerID)
);
insert into cutomer(customerID ,customeName,customerAddress )
values(12,'shery Baloch','56 chak');
insert into orderTable(orderID,orderDate,customerID)
values(32,GETDATE(),12);
select * from cutomer;
select* from orderTable;
DELETE FROM orderTable
WHERE customerID = 12;

DELETE FROM cutomer
WHERE customerID = 12;
select * from cutomer;
select* from orderTable;