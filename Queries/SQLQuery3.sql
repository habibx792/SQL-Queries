create database libaryDB;
use LibraryDB;
create table Student
(
 student_Name varchar(50) not null,
 studentID int unique not null,
 Age int check(age>=12),
 statusActive bit default 1,
 Email varchar(60)  unique,
 JoinDate date default getdate()
 );
 insert into Student(student_Name,studentID,Age,statusActive,Email,JoinDate)
 values( 'Habib',1,12,0,'ghulamhabib@gmail.com','12-12-2020');
 select* from Student;
 insert into Student(student_Name,studentID,Age,statusActive,Email,JoinDate)
 values('Ali',2,32,1,'Ghulamhaib161.com',GETDATE());
  select* from Student;
create table Professor
(
	professorID int unique not null,
	professor_Name varchar(50) not null,
	professor_Designation varchar(40) not null,
	age int check(age>=18),
	joinDate date default getdate()
);
insert into Professor(professorID,professor_Name,professor_Designation,age,joinDate)
values(12,'habib','AI and Ml',20,GETDATE());
select* from Professor;