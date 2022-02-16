create database empManagement
use empmanagement

create table employee(
[emp id] int identity(1,1) constraint pk_emp primary key,
[First Name] varchar(50),
[Last Name] varchar(50),
[Role] varchar(10),
[category] varchar(20),
[Login] varchar(50),
[Password] varchar(max),
[DOB] date,
[Gender] varchar(10),
)

alter table employee add [security question] varchar(50);
alter table employee add [solution] varchar(max)

create table Leave(
LeaveId int identity(100,1) constraint pk_leave primary key,
[emp id] int constraint fk_emp foreign key references employee, 
[From date] date,
[End date] date,
[Leave type] varchar(15),
[Reason] varchar(max)
)

create table timesheet(
[sheet id] int identity(100,1) constraint pk_timesheet primary key,
[emp id] int constraint fk1_emp foreign key references employee, 
[attendance id] int constraint fk1_timesheet foreign key references attendance,
)

create table attendance(
[attendance id] int identity(100,1) constraint pk_attendance primary key,
[emp id] int constraint fk2_emp foreign key references employee, 
[Day start] datetime,
[Day end] datetime,
[status] varchar(20),
)

create table salary(
[salary id] int identity(100,1) constraint pk_salary primary key,
[emp id] int constraint fk3_emp foreign key references employee, 
[Basic pay] int,
[House rent] int,
[Bonus] int,
[Provident fund] int,
[Esi] int,
[Prof Tax] int,
)

select * from employee;
select * from timesheet;
select * from Leave;
select * from attendance;
select * from salary;


/*
employee
timesheet
attendance
leave
salary
*/
