create database cc6;
use cc6;
create table CUSTOMER(
PHONE_NUMBER varchar(10) not null primary key,
CUSTOMER_NAME varchar(20),
EMAIL_ID varchar(35)
);
 
create table PLAN(
PLAN_AMOUNT int(6) not null primary key,
VALIDITY_INDAYS int(4),
LOCAL_VOICE_INMINS_PERDAY_SN int(3),
LOCAL_VOICE_INMINS_PERDAY_ON int(3),
STD_VOICE_INMINS_PERDAY_SN int(3),
STD_VOICE_INMINS_PERDAY_ON int(3),
DATA_INGB_PERDAY double(3,1),
SMS_PERDAY int(3),
PLAN_TYPE varchar(10)
);

create table SUBSCRIPTION(
PHONE_NUMBER varchar(10),
PLAN_AMOUNT int(6),
RECHARGE_DATE date,
EXPIRY_DATE date,
foreign key (PHONE_NUMBER) references CUSTOMER(PHONE_NUMBER),
foreign key (PLAN_AMOUNT) references PLAN(PLAN_AMOUNT)
);