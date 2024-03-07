-- 11-01-2024
create database iant;

create table <table-name>(col1 datatype(size),col2 datatype(size));

create table student(roll int primary key,name varchar(15),address varchar(20),course varchar(20));

show tables;

-- desc <table-name>; -- describe table

-- insert record

insert into <table-name> values(val1, 'val2',val3 ....n)


insert into student values(15,'Nirav','Surat','Python');

select * from <table-name>

select * from student;

insert into student values(11,'Nirav','Surat','Python');
insert into student values(12,'Shakshi','Roorkee','c++');
insert into student values(13,'Parth','Baroda','Java');
insert into student values(14,'Shalini','Madurai','Angular');
insert into student values(15,'Muskan','Pune','Ise Ku6 Nahi Aata');

-- show perticular column from table
select <colunm-name> from <table-name>

-- show 
select col1,col2,col3 from <table-name>

select <col-name> from <table-name> where <col-name> = 'value';


delete from <table-name> --- erase all table

delete from <table-name> where <col-name> = 'value' -- erase perticular row

-- update <table-name> set col-name = "new value"

update student set course = 'NOde js'

-- update <table-name> set col-name = "new value" where col-name = 'value';

update student set course = "Python" where name = 'Shakshi';


create table bag(
    color varchar(5),
    size varchar(5),
    componanet varchar(5),
    constraint pk_comp1 primary key (color,size,componanet)
);

insert into bag values('red','s','2');
insert into bag values('red','s','3');
insert into bag values('red','s','4');
insert into bag values('red','m','2');
insert into bag values('red','m','3');
insert into bag values('red','m','4');
insert into bag values('red','l','2');
insert into bag values('red','l','3');
insert into bag values('red','l','4');

insert into bag values('green','s','2');
insert into bag values('green','s','3');
insert into bag values('green','s','4');
insert into bag values('green','m','2');
insert into bag values('green','m','3');
insert into bag values('green','m','4');
insert into bag values('green','l','2');
insert into bag values('green','l','3');
insert into bag values('green','l','4');

insert into bag values('blue','s','2');
insert into bag values('blue','s','3');
insert into bag values('blue','s','4');
insert into bag values('blue','m','2');
insert into bag values('blue','m','3');
insert into bag values('blue','m','4');
insert into bag values('blue','l','2');
insert into bag values('blue','l','3');
insert into bag values('blue','l','4');

-- foreign key

create table student_new(
    rollno int primary key,
    name varchar(15),
    address varchar(15),
    course varchar(6),
    constraint fk_course foreign key (course) references course_new(course_id)
);
create table course_new(
    course_id varchar(6) primary key, description varchar(15)
);


insert into course_new values('cs01','Pythone');
insert into course_new values('cs02','Java');
insert into course_new('cs03','C++');

insert into student_new values (1,'Nirav','surat','cs01');
insert into student_new values (2,'Shakshi','roorkee','cs03');
insert into student_new values (3,'Parth','vadodra','cs02');


create table course(course_id varchar(20) primary key,description varchar(10));

create table student(rollno int primary key,
    name varchar(10),
    city varchar(10),
    course varchar(20),
    constraint f_key foreign key (course) references course(course_id)
);

create table city(
    city_id varchar(20)  primary key,
    city_name varchar(20)
);

create table employee(
    emp_id int primary key,
    name varchar (10),
    city varchar(20),
    foreign key (city) references city(city_id)
);

insert into city values('GJ05','Surat');
insert into city values('GJ01','Ahmedabad');
insert into city values('GJ04','Rajkot');

insert into employee values(1, 'Nirav','GJ01');
insert into employee values(2, 'mayank','GJ04');