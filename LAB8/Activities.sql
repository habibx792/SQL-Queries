use OrderPlaceMent;
select * from Cutommer_table;
select * from OrderTable;
select* from PRODUCTTABLE;
select * from OrderLineTable;      
--activity 3
--1
select customerID,count(*) as TotalOrders from  OrderTable  
group by customerID
having count(*)>2;

--2 
select ProductLineID, count(*)as totalOrder ,avg(productStandardPrice) as AveragePrice from PRODUCTTABLE
group by ProductLineID
having count(*)<300;
--3
select  min(ProductStandardPrice) as MiniPrice ,max (productStandardPrice) as MaxPrice from PRODUCTTABLE
group by ProductLineID;

--4
select ProductID,count(*)As TotalOreder from OrderLineTable
group by ProductID;
--5
select ProductFinish,ProductLineID ,count(*)As TotalProducts from PRODUCTTABLE
group by ProductFinish,ProductLineID;

--6
select ProductID,OrderQuantity  from OrderLineTable
group by ProductID,OrderQuantity;