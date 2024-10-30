--  create table
create table employee(
	EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT CHECK (Age >= 0 AND Age <= 99),
    Phone int(10)
);

--  to insert data in table
insert into customer (customerID,CustomerName,LastName,Country,age,phone)
values (1, 'Shubham', 'Thakur', 'India','23',1234567890),
       (2, 'Aman ', 'Chopra', 'Australia','21','1234567890'),
       (3, 'Naveen', 'Tulasi', 'Sri lanka','24','1234567890'),
       (4, 'Aditya', 'Arpan', 'Austria','21','1234567890'),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22','1234567890');


--  select * from customer


--  create table from existing table with data

create table sub_cust  as 
select CustomerName,LastName from customer;

--  create table from existing table with out data by using the where clause with false condition
create table sub_cust as select * from customer where 1!=1;

-- to delete the table 
drop table sub_cust

--  to delete the data in table
delete from gfg_employees
where name='Rithvik';

-- to rename a table
alter table gfg_employees rename to test_emp

-- to rename a column
alter table gfg_employees rename column name  to first_name

--  to add a column in existing table
alter table temp2 add column salary decimal(10,2);

--  to drop a column from table
alter table tem2 drop column phpne

--  add two columns in existing table
ALTER TABLE temp2 ADD 
 (departid number(3),depart varchar(40));