//Table RMadmin

create table RMadmin(
adName varchar(100),
userId varchar(25),
emailId varchar(100),
mobNo varchar(15),
gender varchar(10),
dob DATE,
pwd varchar(25),
seqt varchar(50),
seqans varchar(50),
)

//Table RMemployee

create table RMemployee(
empName varchar(100),
empId varchar(25),
mobNo varchar(15), 
emailId varchar(100),
empDes varchar(50),
empAdd varchar(100),
empquali varchar(100),
dob DATE,
gender varchar(10),
empImage image
)

//Table RMattendance

create table RMattendance(
empId varchar(25),
empPresent int
)