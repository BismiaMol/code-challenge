create database cc;
use cc;
create table t_agent(
agent_id varchar(25) not null primary key,
agent_name varchar(100),
agent_email varchar(50),
agent_city varchar(100),
agent_phone decimal(15,0),
TARGET_POLICY_SUM decimal(15,0)
);
create table t_policy(
policy_id varchar(25) not null primary key,
policy_name varchar(100),
agent_id varchar(25),
policy_type varchar(100),
policy_sum decimal(10,0),
policy_status varchar(100),
policy_tenure decimal(5,0)
);
select * from t_policy;
create table t_member(
member_id varchar(25) not null primary key,
member_name varchar(100),
member_email varchar(100),
member_city varchar(100),
member_phone decimal(10,0),
agent_id varchar(100),
policy_id varchar(100),
foreign key(agent_id) references t_agent(agent_id),
foreign key(policy_id) references t_policy(policy_id)
);
insert into t_agent values
('M001','Manu','manu123@gmai.com','Pune',9999999999,10000),
('N001','Moti','moti123@gmail.com','Chennai',8765456789,12000),
('N004','Manoj','manoj1232gmail.com','Mumbai',6235860123,35000),
('M002','Madhu','madhu123@gmail.com','Chennai',8765123090,50000);

update t_agent
set TARGET_POLICY_SUM =
case agent_city
when 'Pune' then 400000 when 'Chennai' then 250000
else TARGET_POLICY_SUM
end
where agent_id like 'M%';
select * from t_agent;



