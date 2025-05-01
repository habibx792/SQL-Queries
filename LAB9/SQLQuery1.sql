use CourseManagement;

select * 
from STUDENT;
select * 
from FACULTY;
select * 
from COURSE;
select * 
from RESULTS;
select * from Student;
select studentId,courseId from



------------------------------------- ACTIVITITY-2 ------------------------------------
select studentId 
from student
union 
select studentId from RESULTS;

select studentId 
from student
union all
select studentId from RESULTS;

select studentId 
from student
intersect
select studentId from RESULTS;

select studentId 
from student
EXCEPT
select studentId from RESULTS;


SELECT * FROM STUDENT
CROSS JOIN RESULTS;
---------------------------------- ACTIVITY-3 ---------------------------
use OrderPlaceMent;

SELECT * from Cutommer_table;
select * from OrderLineTable;
select * from OrderTable;
select * from PRODUCTTABLE;
select * from PRODUCTLINE;

--1
select * from PRODUCTTABLE
cross join OrderTable;
--2
select * from PRODUCTTABLE
cross join PRODUCTLINE;
--3
select * from PRODUCTTABLE
cross join OrderLineTable;
--4
select * from OrderTable
cross join OrderLineTable;
--5
select * from OrderTable;
select * from Cutommer_table;
--6
select customerName,CustomerAdrress, CustomerCity from Cutommer_table,OrderTable
where Cutommer_table.CusomerID=OrderTable.customerID
and OrderID in(1004,1007,1003);
--7
select customerName,CustomerAdrress,CustomerCity from Cutommer_table,OrderTable
where Cutommer_table.CusomerID=OrderTable.customerID
and OrderID>1003 and OrderID<1009;
--8
select * from PRODUCTLINE;
select ProductDescription,ProductID,ProductStandardPrice,ProductLineName  from PRODUCTTABLE,PRODUCTLINE
where PRODUCTTABLE.ProductID=PRODUCTLINE.ProductLineID
and ProductDescription like '%desk%';
--9
select min(ProductStandardPrice),max(ProductStandardPrice),avg(ProductStandardPrice) from PRODUCTTABLE
cross join PRODUCTLINE
where PRODUCTTABLE.ProductLineID=PRODUCTLINE.ProductLineID
group by ProductLineName;

--10
select  OrderID,OrderQuantity from OrderLineTable;
--11
select OrderID,OrderQuantity from OrderLineTable
cross join PRODUCTTABLE
where OrderLineTable.ProductID=PRODUCTTABLE.ProductID and ProductFinish like '%ash%';

--12
select OrderQuantity from OrderLineTable
cross join OrderTable cross join Cutommer_table
where OrderLineTable.OrderID=OrderTable.OrderID and Cutommer_table.CusomerID=OrderTable.customerID and 
customerName in ('Contemporary Casuals', 'Value Furniture','Impressions');

--13 Show order date and CustomerID of End Table Coffee tables and Writer Desk
select OrderDate, CusomerID from OrderTable
cross join Cutommer_table
cross join PRODUCTTABLE
cross join OrderLineTable
where Cutommer_table.CusomerID=OrderTable.customerID
and PRODUCTTABLE.ProductID=OrderLineTable.ProductID
and OrderTable.OrderID=OrderLineTable.OrderID
and ProductDescription in ('End Table', 'Coffee table','Writer Desk');
--14
select OrderDate,customerID  from OrderTable
cross join Cutommer_table
cross join OrderLineTable
cross join PRODUCTTABLE

where Cutommer_table.CusomerID=OrderTable.customerID
and OrderLineTable.ProductID=PRODUCTTABLE.ProductID 
and OrderLineTable.OrderID=OrderTable.OrderID
and
ProductFinish in ('End Table', 'Coffee table','Writer Desk');

--15
select OrderDate,OrderTable.OrderID,customerID,PRODUCTTABLE.ProductID from OrderTable
cross join Cutommer_table
cross join OrderLineTable 
cross join PRODUCTTABLE
cross join PRODUCTLINE
where Cutommer_table.CusomerID=OrderTable.customerID and OrderTable.OrderID=OrderLineTable.OrderID
and PRODUCTTABLE.ProductID=OrderLineTable.ProductID;

--16 16.Show CustomerID and Names who ordered desks

use OrderPlaceMent;

SELECT * from Cutommer_table;
select * from OrderLineTable;
select * from OrderTable;
select * from PRODUCTTABLE;
select * from PRODUCTLINE;

select CusomerID,customerName  from Cutommer_table
cross join OrderTable
cross join OrderLineTable
cross join PRODUCTTABLE
where Cutommer_table.CusomerID=OrderTable.customerID
and OrderLineTable.ProductID=PRODUCTTABLE.ProductID
and ProductDescription like '%table%';

--17 17.Show Product Description and ID of the Products which are ordered by Contemporary Causals
select ProductDescription, CusomerID,OrderTable.OrderID,PRODUCTTABLE.ProductID from PRODUCTTABLE
cross join Cutommer_table
cross join OrderTable
cross join OrderLineTable
where Cutommer_table.CusomerID=OrderTable.customerID and
PRODUCTTABLE.ProductID=OrderLineTable.ProductID;
--18 18.Show CustomerID, Name,
--ProductID and Product Description who ordered Products whose ProductLineName is Scandinavia
select CusomerID,customerName,PRODUCTTABLE.ProductID,ProductDescription from Cutommer_table
cross join OrderTable
cross join PRODUCTTABLE
cross join OrderLineTable
where Cutommer_table.CusomerID=OrderTable.customerID 
and OrderTable.OrderID=OrderLineTable.OrderID
and PRODUCTTABLE.ProductID=OrderLineTable.ProductID
and ProductDescription ='Scandinavia';


