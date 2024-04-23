

-- Welcome to payroll service

-- Creating Payroll_Service database.

create Database Payroll_Service;

-- Displaying all the databses in the server (Local).

select * from sys.databases;

-- Using the Payroll_Service database.

use Payroll_Service;

-- Create table Employee_PayRoll

create table Employee_PayRoll (Id int primary key identity (1, 1), Name nvarchar(20), Salary Decimal(10, 2), Start Date);

-- Inserting data to the Employee PayRoll table

insert into Employee_PayRoll (Name, Salary, Start)
values ('Doe', 50000.00, '2023-01-15'),
       ('Smith', 60000.00, '2023-02-28'),
       ('Johnson', 55000.00, '2023-03-10'),
       ('White', 65000.00, '2023-04-05');

