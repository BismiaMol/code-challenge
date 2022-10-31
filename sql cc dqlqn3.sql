create database ccdql3;
use ccdql3;

create table  Department(
	Dept_id INT(11) PRIMARY KEY,
	Dept_name VARCHAR(25)
);

create table  Staff(
	Staff_id int(11) primary key,
	Staff_name varchar(25),
	Supervisor_id int(11),
	Salary bigint(20),
	Join_date date,
	Dept_id int(11),
	foreign key (Dept_id) references Department(Dept_id)
);

INSERT INTO Department VALUES(01,'IT'),
(02,'HR');
INSERT INTO Staff VALUES(1,'John',001,10000,'2022-10-10',01),
(2,'Smith',002,10000,'2020-01-01',01);

SELECT MIN(Avg_Salary) FROM (SELECT Dept_id,AVG(Salary) AS 'Avg_Salary' from Staff GROUP BY Dept_id) q1 WHERE Dept_id IS NOT NULL AND Dept_id != 10;

SELECT Staff_id,Staff_name,salary,dept_id
FROM STAFF
WHERE salary > (SELECT MIN(Avg_Salary)FROM (SELECT Dept_id,AVG(Salary) AS 'Avg_Salary' from Staff GROUP BY Dept_id) q1 WHERE Dept_id IS NOT NULL AND Dept_id != 10) AND dept_id=10
ORDER BY Staff_id ASC;