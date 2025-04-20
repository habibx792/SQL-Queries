use ORG;

select * from WORKER;

select FirstName, Salary from WORKER;
select 11+12;
select GETDATE();
select* from WORKER
where Salary>180000;
select* from WORKER
Where Department='HR';
--between
select * from
WORKER

where Salary between 18000 AND 300000;

select * from WORKER
where Department='HR' or Department='Admin';

--in or
select * from WORKER
where Department in('HR','Admin','Account');
--where
select * from WORKER
where not Department='Admin';

select * from WORKER
where not Department='HR';
insert into WORKER(workerID,FirstName,LastName,Salary,Department)
values(20,'Ghulam','Habib',1000000,NULL);
--manipulation with null
select * from WORKER
where Department is null;


insert into WORKER(workerID,FirstName,LastName,Salary,Department)
values(22,'Hadia','Ali',3232300,NULL);
--wilder card and pattern
select * from WORKER
where Department is null;
--wildcard
select * from WORKER
where Department like 'H%';

select * from WORKER
where FirstName like '_i%';
--order by
select * from WORKER
order by workerID ASC;
--group by use
use ORG;
select distinct Department from WORKER;
select Department,COUNT(*) from WORKER
group by Department;
select * from WORKER;

select Department,AVG(Salary) as AVG_salaery from WORKER
group by Department;
--group by use
use ORG;
select Department, min(Salary) from worker
group by Department;

--having use 
select Department,COUNT(*) from WORKER
group by Department
having count(Department)<=2;

--alter operations
use ORG;
--alter table ACCOUNT add interestRate float not null default 0;
--alter table ACCOUNT change interestRate saving_interest double not null default 0;

--updation
update WORKER set Salary=10000 ,Department='CSE' where workerID=20;
update Bonus set BONUS_AMOUNT=323000 where WORKER_REF_ID=3;

select * from Bonus;
--delete
delete from WORKER where workerID=20;

select * from WORKER;

delete WORKER;