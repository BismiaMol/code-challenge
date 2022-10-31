create database ccdql2;
use ccdql2;

create table Customer_Details(
Customer_id varchar(10) primary key,
Customer_Name varchar(30),
Phone_No varchar(10),
City varchar(20)
);

create table Purchase_Details(
Purchase_id int(5) primary key,
Customer_id varchar(10),
foreign key (Customer_id) references Customer_Details(Customer_id),
Pet_id varchar(5),
Purchase_Date date,
Total_Amount_Paid double(8,2)
);

insert into Customer_Details values('3','Kevin','9000000000','Kochi');
insert into Purchase_Details values('6','1','6','2022-10-23',10000.00);

select * from Customer_Details;
select * from Purchase_Details;


select q1.Customer_id,Customer_Details.Customer_Name,q1.No_of_Pets 
from (select * from (select Customer_id, COUNT(Customer_id) as 'No_of_Pets' from Purchase_Details group by Customer_id) q2 where No_of_Pets > 1) q1
join Customer_Details 
where q1.Customer_id = Customer_Details.Customer_id order by q1.Customer_id asc;