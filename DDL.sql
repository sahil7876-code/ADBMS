drop database company_db;
create database companyDB;
show databases;

use companyDB;
create table Employees(EmpID int Primary Key, EmpName varchar(255), Salary int, JoinDate date);
select * from Employees;

create table Departments(DeptID int Primary Key, DeptName varchar(255));
select * from Departments;

alter table Employees add column Email varchar(100);
select * from Employees;

alter table Departments add column dept_loc varchar(255);

alter table Employees add Phone varchar(10) not null;

alter table Employees modify EmpName varchar(100);
select * from Employees;

alter table departments drop primary key;
desc Departments;

alter table departments add primary key(DeptID);
alter table Employees add column DeptID int;
alter table Employees add constraint emp_dept foreign key(DeptID) references departments(deptID); 
desc Employees;

alter table employees drop column columnage;
alter table Employees rename column EmpName to EmployeeName;
desc Employees;

alter table Employees add column age int;
alter table Employees add constraint chk_salary check(salary>1000), add constraint chk_age check(age>=21);

alter table employees drop column Phone;

rename table employees to EmployeesDetails;
desc EmployeesDetails;


alter table employeesDetails Drop constraint chk_salary;

alter table employeesDetails drop foreign key emp_dept;
drop table Departments;
show tables;

Drop database companyDB;
show databases

