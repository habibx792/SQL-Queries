use NORTHWINDS;
select * from Customers;
select distinct city ,count(*) as TotalCities from Customers
group by city
order by city ASC;
--selcting distinct couries and grouping and ordering
select distinct country,count(*) from Customers
group by country
having count(*)>10
order by country asc;
--
select* from Customers
where city='Berlin';

select ContactTitle as Total_Owner from Customers
where ContactTitle='Owner';
