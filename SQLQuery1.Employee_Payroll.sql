/* UC1-Create DataBase */
Create database Payroll_Service;

use Payroll_Service

/* UC2 create a employee payroll table in the payroll service database*/
create table employee_payroll
(
Id int identity(1,1) primary key,
Name varchar(25),
Salary int,
StartDate varchar(15)
);

/* UC3 create employee payroll data */
insert into employee_payroll(Name, Salary, StartDate) values ('Sumit','55000','19/01/2020'),
('Virat','30000','01/01/2022'),
('Sachin','40000','15/09/2019'),
('Disha','50000','09/08/2020'),
('Viraj','60000','20/01/2022'),
('Rohit','70000','25/01/2020'),
('Raj','80000','05/07/2017');

/* UC4 retrieve all the employee payroll data */
select * from employee_payroll;

/*UC5 retrieve salary data on a condition */
SELECT Salary,Name FROM employee_payroll WHERE Name = 'Sumit';
Select Salary,Name from employee_payroll where StartDate between ('01/01/2017') and ('19/01/2020');

/* UC6 add Gender to Employee Payroll Table and Update the Rows */
ALTER TABLE employee_payroll ADD Gender varchar(6);
UPDATE employee_payroll set Gender = 'M' where  Name='Sumit' or Name = 'Virat' or Name='Sachin' or Name='Viraj' or Name='Rohit' or Name='Raj'
UPDATE employee_payroll set Gender = 'F' where  Name='Disha'


