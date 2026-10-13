create database TCL;
use TCL;

create table orders(order_id int primary key, customer_name varchar(100), status varchar(50));
desc orders;

set autocommit = 0;
begin;
insert into orders(order_id, customer_name, status) values(101, 'geet', 'Pending'), (102, 'bob', 'Pending');
select * from orders;

update orders set customer_name = 'Raj' where order_id=102;
rollback;
commit;


insert into orders(order_id, customer_name, status) values(103, 'ALice', 'Pending'), (104, 'Bob', 'Pending');
commit;
update orders set customer_name='Raj'where order_id=104;
rollback;


-- step 1 : Insert more few orders
insert into orders(order_id, customer_name, status) values(105, 'Om', 'Pending'), (106, 'Sahil', 'Pending');
savepoint sp1;
select * from orders;


-- step 2: update 1 order
update orders set status='shipped' where order_id='105';
savepoint sp2;
rollback to sp1;

-- step 3 delete another order
delete from orders where order_id=102;
savepoint sp3;

rollback to sp2;

rollback;

create database companyDB;
use companyDB;
create table Employees(Emp_id int primary key, First_name varchar(100), Last_name varchar(100), age int, salary int);
insert into Employees(Emp_id, First_name, Last_name, age ,salary) values()