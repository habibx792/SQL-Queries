CREATE TABLE employeeTable
(
	empId int primary key,
	employeeName varchar(30) NOT NULL,
	eployeeDOB DATE NOT NULL,
	salary varchar(30) NOT NULL
);
CREATE TABLE department
(
	depId INT PRIMARY KEY,
	depName varchar(30),
	depAddress varchar(30)
);
CREATE TABLE teacher
(
	teachId int primary key,
	teachName varchar(20),
	salary decimal(20,4)
);

