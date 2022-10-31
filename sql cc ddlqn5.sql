create database cc5;
use cc5;
create table t_hall_details(
hall_id varchar(10) not null primary key,
hall_name varchar(25),
city varchar(20),
hall_type varchar(10),
capacity int(10),
costperday int(10)
);

create table t_customer_details(
customer_id varchar(10) not null primary key,
customer_name varchar(20),
mobileno INT(11),
customer_city varchar(20)
);

create table t_hall_booking(
hall_id varchar(10),
customer_id varchar(10) not null primary key,
event_name varchar(20),
event_date date,
foreign key (hall_id) references t_hall_details(hall_id),
foreign key (customer_id) references t_customer_details(customer_id)
);