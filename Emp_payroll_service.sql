create database Payroll_service;
 --Show database--;
create table Payroll_Service
(
ID int identity(1,1) primary key,
Name varchar(200),
Salary int,
StartDate date
)

select * from Payroll_Service;

insert into Payroll_Service (Name,Salary,Startdate)values()