create database organization;
use organization;
create table employee(empid int not null primary key,first_name varchar(15),last_name varchar(15),gender char,role varchar(15),dept varchar(15),manager_id varchar(10));
insert into employee values(1,'john','allen','M','team leader','retail','m11'),
						(2,'kim','allen','F','team leader','finance','m12'),(3,'john','all','M','manager','retail','m13'),
                        (4,'jack','auro','M','president','hr','m14'),(5,'john','mackkk','F','precident','hr','m15');
select * from employee;

select distinct dept from employee order by dept;

select * from employee where role='president' and dept='hr';
select * from employee where role='president' or dept='finance';

select * from employee where role in ('president','manager','ceo');
select * from employee where role not in ('precident','manager','ceo');

alter table employee add column experience int;

update employee set experience =8 where empid=1;
update employee set experience =18 where empid=2;
update employee set experience =9 where empid=3;
update employee set experience =9 where empid=4;
update employee set experience =4 where empid=5;

update employee set role ='team leader' where empid=6;

select * from employee where experience between 6 and 10;

select * from employee where experience=9 or experience=18;

select * from employee where last_name like 'a%';

select * from employee order by experience limit 5;

insert into employee values(6,'jmyu','llen','M','tm',null,' ',8);

select * from employee where manager_id is not null;


-- Aggregate functions

select count(empid) from employee where dept='finance';
select count(empid) from employee where role='manager';
select Min(experience) from employee;
select Max(experience) from employee;
select Sum(experience) from employee;
select avg(experience) from employee;

select * from employee;



/*group by clause- */

select dept, count(*) as employee_count from employee group by dept;
select role, count(*) as employee_count from employee group by role;
select gender, count(*) as employee_count from employee group by gender;

/* having clause*/

select dept, sum(experience) as total_exp
from employee group by dept
having total_exp >= 10 and total_exp <= 20;

select role, sum(experience) as total_exp
from employee group by role
having total_exp >= 10 and total_exp <= 20;


-- fetch dept wise emp count using having clause and sort the data

select dept, count(empid) from employee 
group by dept
having count(empid) >= 1
order by count(empid) desc; 


select dept, sum(experience) as total_exp 
from employee group by dept 
having total_exp >= 10 and total_exp <= 30;

select * from employee;