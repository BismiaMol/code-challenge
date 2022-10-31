create database dql1;
use dql1;
create table zeerentals(
	rental_id varchar(10) primary key,
    cust_id varchar(10),
    laptop_id varchar(10),
    pick_date date,
    return_date date,
    amount bigint(20)
);
insert into zeerentals values
('R01','C01','L3','2020-01-01','2022-01-10',80000),
('R02','C02','L4','2020-01-13','2020-05-10',100000),
('R03','C03','L5','2019-12-02','2022-12-01',90000);
select * from zeerentals;


select rental_id, cust_id, laptop_id, amount, RPAD(amount,10,"*") as Modified_Amount 
from zeerentals
where amount > 7000 and year(pick_date) = 2020 and month(pick_date) = 05
order by rental_id asc;