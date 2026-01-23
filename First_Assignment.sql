create table students(name varchar(20),roll_no int,age int, Dept varchar(20), phone int);
create table courses(course_id int,course_name varchar(20), credits int);

alter table students add city varchar(20);

alter table students add semester int;

alter table students rename column phone to Mobileno;

drop table courses;

/*insert into students values ('Ashwin',23738,18,'cse',8780153835,'patna',5);*/
/*insert into students values ('Rahul',23765,19,'cse',6580153835,'jharkhan',3);*/
/*insert into students values ('Ajeet',23735,21,'ai',6680153835,'jk',7);/*
/*insert into students values ('Anish',23798,20,'civil',9880153835,'mumbai',2);/*
/*insert into students values ('Ashish',23740,17,'eee',3680153835,'delhi',1);/*

/*Select * from students;*/
/*select roll_no from students;*/
/*select dept from students;*/
/*select * from students where age>20;*/

/*update students set dept ='ECE' where roll_no = 23738;*/
/*update students set city ='patna' where city = 'jharkhan';*/
/*update students set age =age+1;*/
/*delete from students where roll_no = 23738;*/
truncate table students; 



