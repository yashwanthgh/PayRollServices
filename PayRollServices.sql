

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

-- Retrive all data from the Employee PayRoll table

select * from Employee_PayRoll;

-- Retriving data from perticular emoloyee

select Salary from Employee_PayRoll where Name = 'Smith';

-- Retriving data between dates

select * from Employee_PayRoll where Start between '2023-02-01' and '2023-04-01';

-- Altering table 

alter table Employee_PayRoll add Gender nvarchar(2);

-- Updateing table 

update Employee_PayRoll set Gender = 'M' where Name = 'Johnson';

-- Sum, Min, Max, Count and Avg Functions

	-- Average
select Gender, Avg(Salary) as AverageSalary from Employee_PayRoll group by Gender;
	-- Maximum
select Gender, Max(Salary) as MaximumSalary from Employee_PayRoll group by Gender;
	-- Minimum
select Gender, Min(Salary) as MinimumSalary from Employee_PayRoll group by Gender;
	-- Sum
select Gender, Sum(Salary) as TotalSalary from Employee_PayRoll group by Gender;
	-- Count
select Gender, Count(Salary) as MaleAndFemaleCount from Employee_PayRoll group by Gender;

-- Adding information like Address, Number and Department
alter table Employee_PayRoll
add Department nvarchar(50) default 'Unknown';

-- Update existing data to set a default department
update Employee_PayRoll
set Department = 'Unknown'
where Department is null;

-- Alter the Department column to be non-nullable
alter table Employee_PayRoll
alter column Department nvarchar(50) not null;

alter table Employee_PayRoll
add Phone varchar(20),
    Address nvarchar(100) default 'Unknown';

alter table Employee_PayRoll
add BasicPay decimal(10, 2),
    Deductions decimal(10, 2),
    TaxablePay decimal(10, 2),
    IncomeTax decimal(10, 2),
    NetPay decimal(10, 2);

insert into employee_payroll
(name, department, gender, BasicPay, Deductions, TaxablePay, IncomeTax, NetPay, start) VALUES
('Terisa', 'Marketting', 'F', 3000000.00, 1000000.00, 2000000.00, 500000.00, 1500000.00, '2018-01-03' );