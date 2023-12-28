use test;

create table users1 (
user_id integer Primary key auto_increment,
user_name varchar(50) not null, -- --nu va fii gol---
email varchar (100) unique, -- ---unicalnaea imea--
age integer check(age between 0 and 140),-- ---check trebuvanea---
gender char(1) check(gender in ('m','f'))-- ---char tolka nebasie number do 1-10 esli 20-100 ata var char
);

insert into users1 (user_name,email,age,gender)
value ('John Doe',"johndoe@example.com",30,'m');
insert into users1 (user_name,email,age,gender)
value ("Jane Smith","janesmith@example.com",25,'m');

select * from users1;