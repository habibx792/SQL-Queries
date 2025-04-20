use ORG;
insert into Customer(id,cname,Address,Gender,City,Pincode)
values(1,'habib','364','M','FSD',123);
insert into Order_details(Order_id,delivery_date,cust_id)
values(2,'2020-01-01',1);
insert into Order_details(Order_id,delivery_date,cust_id)
values(3,'2020-01-01',1);
delete from Customer where id=1;
select * from Customer;
select * from Order_details;