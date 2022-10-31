create database cc3;
use cc3;
create table t_doctor(
doctor_id int(11) not null primary key,
doctor_name varchar(25),
mobile_no int(11),
email varchar(30),
specialization varchar(10),
fees int(7)
);

create table t_patient(
patient_id varchar(10) not null primary key,
patient_name varchar(30),
gender char(2),
ailment varchar(20),
doctor_id int(11),
foreign key(doctor_id) references t_doctor(doctor_id)
);

create table t_hospital(
available_doctor int(11),
shift_time varchar(20),
foreign key (available_doctor) references t_doctor(doctor_id)
);

insert into t_doctor values
(001,'Mahesh',5679900,'mahesh1@gmail.com','Pediatric',300),
(002,'Shabnam',908090,'shabnam2@gmail.com','Gynec',1000),
(003,'Jasmin',678900,'jasmin1@gmail.com','Derma',400),
(004,'Jacob',89786,'jacob123@gmail.com','ENT',500),
(005,'Jeff',999546,'jeff123@gmail.com','Neuro',350);

select * from t_doctor;
update t_doctor
set fees=
case specialization
when 'ENT' then 350 when 'DERMA' then 600
else fees
end
where doctor_name like 'J%';
select * from t_doctor;