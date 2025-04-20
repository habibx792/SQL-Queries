create database LibraryDB; 
use LibraryDB;
create table Books(
BookID int not null, 
Title varchar(30), 
Author varchar(40),
year int
);
insert Books(BookID,Title,Author,year)
values(1,'Sql basic','habib',2025);
insert Books(BookID,Title,Author,year)
values(2,'OOPS ','haibib',2025);
select* from Books;
update Books
set year=2000
where Title='OOPS ';
select* from Books;
delete Books
where BookID=2;
select* from Books;
insert into Books(BookID,Title,Author,year)
values(6,'HTML & CSS', 'Saad', 2021);
insert into Books(BookID,Title,Author,year)
values(7,'Java Mastery', 'Ali', 2020);
select* from Books
where Author='Ali'and year=2025 ;
select* from Books
where Author='Ali'or year=2020 ;
select* from Books
order by Author asc;
select COUNT(*) as Total_books from Books;
select MIN(year) as LowstYear from Books;
select max(year) as Earliest from Books;
select avg(year) as avgyear from Books;
select* from Books;
select * from Books 
where Title like 'J%';
select * from Books 
where Author like '%b';
select * from Books 
where Title like '%SQL%';
select * from Books 
where Title like '_a%';
select count(*) from Books
group by Author='Ali';