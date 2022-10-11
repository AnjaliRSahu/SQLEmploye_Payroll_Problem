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

insert into Payroll_Service (Name,Salary,Startdate)values('Sam',10000,GETDATE()),
														 ('John',20000,GETDATE()),
														 ('Smith',30000,GETDATE()),
														 ('Jeniffer',35000,GETDATE());

select * from Payroll_Service;

insert into Payroll_Service (Name,Salary,StartDate)values('Ash',40000,'2021-09-08'),
														 ('Anji',38000,'2019-12-05');


update Payroll_Service 
set StartDate='2020-01-01' where ID=7;

update Payroll_Service 
set StartDate='2018-01-01' where ID=8;


update Payroll_Service 
set StartDate='2017-01-01' where ID=9;

select salary,Name,ID,StartDate from Payroll_Service where StartDate between CAST('2020-01-01'AS date)And GETDate();

alter table Payroll_Service
add Gender char(1);

update Payroll_service
set Gender='M' where name in ('Sam','John','Smith');

update Payroll_service
set Gender='F' where name in ('Ash','Anji','Jeniffer');

Select SUM(salary)as TotalSalary from Payroll_Service
where Gender='F' group by Gender;


Select AVG(salary)as AVGSalary from Payroll_Service
where Gender='F' group by Gender;


Select MIN(salary)as MINSalary from Payroll_Service
where Gender='F' group by Gender;


Select MAX(salary)as MAXSalary from Payroll_Service
where Gender='F' group by Gender;

select count(*)as TotalRows from Payroll_Service;

alter table Payroll_Service
add PhoneNumber varchar(255);

select * from Payroll_Service;

alter table Payroll_Service
add Address varchar(255) Default Mumbai;

alter table Payroll_Service
add Department varchar(255);










