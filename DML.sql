-- DML Commands

create database College;
show databases;

use College;
create table Employees(Empid int, Firstname varchar(10), Lastname varchar(10), Empage int, Empzone varchar(10));
desc Employees;

-- multiple row insertion
insert into Employees(Empid, Firstname, Lastname, Empage, Empzone) 
values  (101, 'Sahil', 'Jadhav', 22, 'east'),
		(102, 'Manas', 'Deshmukh', 22, 'south');

-- single row insertion
insert into Employees values(103, 'John', 'Jacobs', 32, null);

update Employees set Firstname='Tommy', Lastname='mavrick' where Empid=102;

delete from Employess where Empid=101;
select * from Employees;

truncate Employees;


drop database company_db;
create database company_db;
use company_db;
create table Employees(Empid int not null, Firstname varchar(10), Lastname varchar(10), Empage int, Empzone varchar(10));
desc Employees1;

insert into Employees values(101, 'Sahil', 'Jadhav', 22, 'east'),
		(102, 'null', 'Deshmukh', 22, 'south'),
        (103, 'John', 'Jacobs', 32, null);
        
select * from Employees;

create table Employees1(Empid int not null,  Firstname varchar(10), Lastname varchar(10), Empage int, Empzone varchar(10), unique(Empid));

insert into Employees1 values(101, 'Sahil', 'Jadhav', 22, 'east'),
		(102, 'null', 'Deshmukh', 22, 'south'),
        (103, 'John', 'Jacobs', 32, null);
        
select * from Employees1;


create table Employees2(Empid int not null,  Firstname varchar(10), Lastname varchar(10), Empage int, Empzone varchar(10), unique(Empid), check(Empage>20));

insert into Employees2 values(101, 'Sahil', 'Jadhav', 22, 'east'),
		(102, 'null', 'Deshmukh', 22, 'south'),
        (103, 'John', 'Jacobs', 32, null);
        
show create table Employees2;
select * from Employees2;



alter table Employees2 add column salary int, add check(salary >= 5000);
alter table Employees2 drop column salary;

desc Employees2;
insert into Employees2 values(106, 'Rohan', 'kale', 35, 'South', 5000);
insert into Employees2 values(105, 'Nupur', 'Shah', 21, 'West', 7000);


update Employees2 set salary=50000 where Empid=101;


alter table Employees2 drop check employees2_chk_2;


create table Employees3 (Empid int NOT NULL, Firstname varchar(10), Lastname varchar(10), Empage int, check(Empage>20), primary key(Empid));
insert into Employees3 values(1, 'Ravi', 'Kumar', 22);
insert into Employees3 values(3, 'Ram', 'Kumar', 21);
insert into Employees3 values(2, 'Ram', 'Kumar', 21);

select * from Employees3;


Create table Employees4(Empid int Primary Key, Firstname varchar(10), Lastname varchar(10), Empage int, salary int, check(Empage>20));
desc Employees4;
show create table Employees4;
drop table Employees4;

Create table Employees4(Empid int Primary Key, Firstname varchar(10), Lastname varchar(10), Empage int, salary int, check(Empage>20));
alter table Employees4 add constraint chk_Empage_salary check(salary >= 5000);

use company_db;


create table Employees5(Empid int primary key, Firstname varchar(10), Lastname varchar(10), Empdept varchar(20) default 'operation');

insert into Employees5(Empid, Firstname, Lastname) values (1,'A','B'),(2, 'C', 'D'),(3, 'Y', 'Z');

select * from Employees5;

create index DemoIndex on Employees5(Firstname);
show indexes from Employees5;

create index DemoIndex2 on Employees5(Firstname, Lastname);

drop index DemoIndex on Employees5;
drop index DemoIndex2 on Employees5;

-- Auto Increment

Create Table Persons(PersonId int not null auto_increment, Lastname varchar(255) not null, Firstname varchar(255), age int, primary key(PersonId));

insert into Persons(Lastname, Firstname, age) values('a','z',29),('b','y',24),('c','x',32);
select * from Persons;