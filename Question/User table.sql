
-- Database - master 

create database [user]

create table users ( 
user_id int,
name varchar(255),
age int,
emergency_contact int
)

insert into users ( user_id,name,age,emergency_contact)
values
(1, 'Nitish', 34, 11),
(2, 'Ankit', 32, 1),
(3, 'Neha', 23, 1),
(4, 'Radhika', 34, 3),
(8, 'Abhinav', 31, 11),
(11, 'Rahul', 29, 8);

select * from users
