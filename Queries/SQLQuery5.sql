use National_Textile_university;
select* from Student;
select* from Student
order by StudentName;
SELECT DISTINCT  fieldName
from Student;
select StudentID from Student
order by StudentID ASC;
SELECT COUNT(DISTINCT FieldName) AS TotalFiled FROM Student;
select top 1* from Student
order by StudentID DESC;
select GETDATE();
select* from Student;
select* from Student
where StudentID between 10 and 35
order by StudentName desc;