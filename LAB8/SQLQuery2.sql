use OrderPlaceMent;
insert into Cutommer_table(CusomerID,CutomerName,CustomerAdrress,CustomerCity,CustomerState,CustomerPostalCode)
values
(1, 'Contemporary Casuals', '1355 S Hines Blvd', 'Gainesville', 'FL', '326012871'),
(2, 'Value Furniture', '15145 S.W. 17th St.', 'Plano', 'TX', '750947743'),
(3, 'Home Furnishings', '1900 Allard Ave.', 'Albany', 'NY', '122091125'),
(4, 'Eastern Furniture', '1925 Beltline Rd.', 'Carteret', 'NJ', '070083188'),
(5, 'Impressions', '5585 Westcott Ct.', 'Sacramento', 'CA', '942064056'),
(6, 'Furniture Gallery', '325 Flatiron Dr.', 'Boulder', 'CO', '805144432'),
(7, 'Period Furniture', '394 Rainbow Dr.', 'Seattle', 'WA', '979545589'),
(8, 'California Classics', '816 Peach Rd.', 'Santa Clara', 'CA', '969157754'),
(9, 'M and H Casual Furniture', '3709 First Street', 'Clearwater', 'FL', '346202314'),
(10, 'Seminole Interiors', '2400 Rocky Point Dr.', 'Seminole', 'FL', '346464423'),
(11, 'American Euro Lifestyles', '2424 Missouri Ave N.', 'Prospect Park', 'NJ', '075085621'),
(12, 'Battle Creek Furniture', '345 Capitol Ave. SW', 'Battle Creek', 'MI', '490153401'),
(13, 'Heritage Furnishings', '66789 College Ave.', 'Carlisle', 'PA', '170136834'),
(14, 'Kaneohe Homes', '112 Kiowai St.', 'Kaneohe', 'HI', '967442537'),
(15, 'Mountain Scenes', '4132 Main Street', 'Ogden', 'UT', '844034432');
insert into PRODUCTLINE(ProductLineID,ProductLineName)
values
(1, 'Cherry Tree'),
(2, 'Scandinavia'),
(3, 'Country Look');
insert into PRODUCTTABLE(ProductID,ProductDescription,ProductFinish,ProductStandardPrice,ProductLineID)
values
(1, 'End Table', 'Cherry', 175.00, 1),
(2, 'Coffee Table', 'Natural Ash', 200.00, 2),
(3, 'Computer Desk', 'Natural Ash', 375.00, 2),
(4, 'Entertainment Center', 'Natural Maple', 650.00, 3),
(5, 'Writers Desk', 'Cherry', 325.00, 1),
(6, '8-Drawer Desk', 'White Ash', 750.00, 2),
(7, 'Dining Table', 'Natural Ash', 800.00, 2),
(8, 'Computer Desk', 'Walnut', 250.00, 3);

INSERT INTO OrderTable (OrderID, OrderDate, CustomerID) VALUES (1001, '2010-10-21', 1);
INSERT INTO OrderTable (OrderID, OrderDate, CustomerID) VALUES (1002, '2010-10-21', 8);
INSERT INTO OrderTable (OrderID, OrderDate, CustomerID) VALUES (1003, '2010-10-22', 15);
INSERT INTO OrderTable (OrderID, OrderDate, CustomerID) VALUES (1004, '2010-10-22', 5);
INSERT INTO OrderTable (OrderID, OrderDate, CustomerID) VALUES (1005, '2010-10-24', 3);
INSERT INTO OrderTable (OrderID, OrderDate, CustomerID) VALUES (1006, '2010-10-24', 2);
INSERT INTO OrderTable (OrderID, OrderDate, CustomerID) VALUES (1007, '2010-10-27', 11);
INSERT INTO OrderTable (OrderID, OrderDate, CustomerID) VALUES (1008, '2010-10-30', 12);
INSERT INTO OrderTable (OrderID, OrderDate, CustomerID) VALUES (1009, '2010-11-05', 4);
INSERT INTO OrderTable (OrderID, OrderDate, CustomerID) VALUES (1010, '2010-11-05', 1);

INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1001, 1, 2);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1001, 2, 2);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1001, 4, 1);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1002, 3, 5);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1003, 3, 3);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1004, 6, 2);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1004, 8, 2);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1005, 4, 4);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1006, 4, 1);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1006, 5, 2);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1006, 7, 2);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1007, 1, 3);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1007, 2, 2);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1008, 3, 3);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1008, 8, 3);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1009, 4, 2);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1009, 7, 3);
INSERT INTO ORDERLINE_TAVLE (OrderID, ProductID, OrderQuantity) VALUES (1010, 8, 10);
