

-- Welcome to payroll service

-- Creating Payroll_Service database.

create Database Payroll_Service;

-- Displaying all the databses in the server (Local).

select * from sys.databases;

-- Using the Payroll_Service database.

use Payroll_Service;

-- Creating table employee payroll

create table Employee_Payroll (Id int primary key identity (1,1), Name nvarchar(20), Start date);


