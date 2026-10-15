create database users;
use users;

create table customer(cust_id int, cust_name varchar(15), City varchar(10), product varchar(15), Price int);
desc customer;

insert into customer(cust_id, cust_name, City, product, Price) values(101, 'A', 'Pune', 'Pen', '15'),(102, 'B', 'Mumbai', 'Book', '35'),(103, 'C', 'Delhi', 'Chair', '299');
select * from customer;
alter table customer add primary key(cust_id);

select cust_id, cust_name, city from customer;
select * from customer where cust_id=101 or cust_id=103;

create table Clonetable as select * from customer;
select * from Clonetable;
drop table Clonetable;

-- Where Clause

select cust_name, product, price from customer where price>200;
select cust_name, product, price from customer where price<200;

select * from customer where city='Mumbai';

-- Sorting Data using order by single column

select * from customer order by price;
select * from customer order by price desc;

-- Sorting Data using order by multiple column

select * from customer order by city, price;
select * from customer order by price, city;

select * from customer order by city desc, price asc;

-- Single-row Functions
-- Case Conversion Functions

select lower(cust_name), upper(product) from customer where cust_id <103;

alter table customer add column last_name varchar(30);
update customer set last_name='Z' where cust_id=101;
update customer set last_name='Y' where cust_id=102;
update customer set last_name='X' where cust_id=103;
select * from customer;

-- concat

select concat(cust_name, ' ', last_name) as Full_Name from customer;

-- Use of SUBSTR & INSTR functions
select * from customer;
select substr(cust_name, 1 , 1)as initial from customer;

select instr(product, 'a') as position from customer;

insert into customer values(104, 'aabhi', 'Pune', 'Pencil', '5', 'w');

select substr(cust_name, 1, 2) as inital, instr(cust_name, 'b') as position from customer;

select substr(cust_name, 1, 2) as inital, instr(cust_name, 'b') from customer where cust_id<103;