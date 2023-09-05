# Q1. Query got from Linkedin   -   List of all the candidates who possess all the skills

create database skills;

create table required_skills(
id int,
technical_skills varchar(25)
);

insert into required_skills values
(1, 'DS'),
(1,'Tableau'),
(1, 'Sql'),
(2,'R'),
(2,'PowerBI'),
(1,'Python');

# Q List of all the candidates whio possess all the skills

select id from required_skills where technical_skills in ("DS","Sql","Python");

# Q2. Query got from Facebook - Return Ids of the product info that have 0 likes 

create table Ecommerce_website(
product_id int,
product_name varchar(25),
user_id int,
liked_date date
);

insert into Ecommerce_website values
(1001, "Blog", 1, '2023-08-19'),
(1002, "YouTube", null, null),
(1003, "EDucation", 2, '2023-01-18');

## Q - Query got from Facebook - Return Ids of the product info that have 0 likes 

select product_id from Ecommerce_website where user_id is null;
