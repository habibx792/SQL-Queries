use National_Textile_university;
create table Admssion
(	
	StudentName varchar(40) not null,
	studentID int not null,
	addMissionDate date not null,
	admissionFee int not null,
	lastDateOfFee date not null,
	foreign key (studentID) references Student(StudentID),
);
select* from Course;
insert into Course(CourseID,CourseName)
values(12,'OOPS');
INSERT INTO Course(CourseID, CourseName)
VALUES (13, 'Database Systems');

INSERT INTO Course(CourseID, CourseName)
VALUES (14, 'Data Structures');

INSERT INTO Course(CourseID, CourseName)
VALUES (15, 'Web Development');

INSERT INTO Course(CourseID, CourseName)
VALUES (16, 'Computer Networks');

INSERT INTO Course(CourseID, CourseName)
VALUES (17, 'Artificial Intelligence');
SELECT Student.StudentID, Course.CourseID
FROM Student
JOIN Course
ON Student.StudentID = Course.CourseID;
select Student.StudentName,Course.CourseID
from Student
join Course
on Student.FieldName=Course.CourseName;

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    CourseID INT
);
INSERT INTO Enrollments(StudentID, CourseID) VALUES (1, 101);
INSERT INTO Enrollments(StudentID, CourseID) VALUES (2, 102);

SELECT 
    Student.StudentName, 
    Course.CourseName
FROM Enrollments
JOIN Student ON Enrollments.StudentID = Student.StudentID
JOIN Course ON Enrollments.CourseID = Course.CourseID;
