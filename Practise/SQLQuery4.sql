INSERT INTO employeeTable(empId,employeeName,eployeeDOB,salary)
VALUES(1,'Ghulam Habib','01-02-2004',2000);
SELECT * FROM employeeTable;
INSERT INTO employeeTable
values(2,'Ali','02-20-0220',3200);
SELECT * from employeeTable;
select * from dbo.employeeTable;

------------------UPDATE SYNTAX-----------------------------------
UPDATE employeeTable 
set employeeName='Habib'
where empId=1;
updaTE employeeTable
SET salary+=100;
select * from dbo.employeeTable;


SELECT * from employeeTable;
insert into teacher
values(12,'Shahid',230000);
select * from teacher;
insert into teacher(teachId)
values(23);
insert into teacher(teachId)
values(13);
insert into teacher(teachId)
values(14);

update teacher
set teachName='Ali'
where teachId=23;

update teacher
set 
teachName='Waqar',
salary=23
where teachId=13;

update teacher
set 
teachName='SarQar',
salary=2300
where teachId=14;

select * from dbo.employeeTable;
-------------------------------Delete statment---------------------------
delete from employeeTable;


