create database CourseManagement;
use CourseManagement;
create table STUDENT(
	studentId varchar(30) primary key,
	Name varchar(30) not null,
	City varchar(30),
	Major varchar(10)
);

create table FACULTY(
	FacultyId int primary Key,
	Name varchar(30) not null,
	Salary int
);

create table COURSE(
	CourseId varchar(30) primary Key,
	Title varchar(30) not null,
	CreditHours int ,
	FacultyId int
	foreign key(FacultyId) references FACULTY(FacultyId)
);

create table RESULTS(
	studentId varchar(30) not null,
	CourseId varchar(30) not null,
	primary key(studentId,CourseId),
	Grade char(1),
	Semester varchar(30),
	DateReport date,
	foreign key(studentId) references STUDENT(studentId),
	foreign key(CourseId) references COURSE(CourseId)
);


INSERT INTO STUDENT (studentId, Name, City, Major) VALUES
('12-NTU-1201', 'Waqas Ahmad', 'Faisalabad', 'BSCS'),
('12-NTU-1202', 'Ali Anwar', 'Karachi', 'BSSE'),
('12-NTU-1203', 'Hamza Rasheed', 'Faisalabad', 'BSIT');

INSERT INTO STUDENT (studentId, Name, City, Major) VALUES
('12-NTU-1204', 'Ghulam Habib', 'Faisalabad', 'BSSE');


INSERT INTO FACULTY (FacultyId, Name, Salary) VALUES
(200, 'Kamran Ahmad', 20000),
(205, 'Murtza Yousaf', 30000),
(210, 'Haider Ali', 10000);


INSERT INTO COURSE (CourseId, Title, CreditHours, FacultyId) VALUES
('CSC-1071', 'Computing', 2, 200),
('CSC-1072', 'Programming', 4, 200),
('CSC-1073', 'Algorithm', 3, 205);

INSERT INTO RESULTS (studentId, CourseId, Grade, Semester, DateReport) VALUES
('12-NTU-1201', 'CSC-1071', 'A', 'Spring', '2013-03-15'),
('12-NTU-1202', 'CSC-1071', 'B', 'Spring', '2012-09-25'),
('12-NTU-1203', 'CSC-1071', 'C', 'Fall', '2013-09-10'),
('12-NTU-1204', 'CSC-1071', 'B', 'Fall', '2013-09-19'),
('12-NTU-1201', 'CSC-1072', 'B', 'Spring', '2013-03-10');



select * 
from STUDENT;
select * 
from FACULTY;
select * 
from COURSE;
select * 
from RESULTS;