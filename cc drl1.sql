create database drl1;
use drl1;
Delimiter Go
create table PetOwner(
owner_id int primary key,
owner_name char(50),
surname char(50),
street_address char(100),
city char(100),
state char(10),
zipCode int
)
Go

Delimiter Go
create table Pet(
pet_id char(10) PRIMARY KEY,
pet_name char(20),
kind char(10),
gender char(6),
age int,
owner_id int
)
Go
Delimiter Go
create table ProcedureHistory(
pet_id char(10),
procedure_date date,
procedure_type char(50),
Descript char(100)
)
Go    
Delimiter Go 
alter table PetOwner
alter state
set
default 'Michigan'
Go
Delimiter Go
select* from PetOwner
Go
    
    
Delimiter Go
alter table Pet
add foreign key (owner_id) references PetOwner(owner_id)
Go
    
    
Delimiter Go
alter table ProcedureHistory
add foreign key (pet_id) references Pet(pet_id)
Go

drop database drl1;
show databases;