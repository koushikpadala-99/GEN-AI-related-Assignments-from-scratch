use classicmodels;
show tables;

# Q-1
select customerName, creditLimit from customers order by creditLimit Desc limit 1;

# Q-2 
select productName ,buyPrice from products where buyPrice>(select avg(buyPrice) from products  );

# Q-3
select * from employees where employeeNumber in (select salesRepEmployeeNumber from customers group by salesRepEmployeeNumber having count(*)>1);

# Q-4
select * from customers where country in (select country from customers group by country having count(*)>1);

# Q-5
select country,customerName,creditLimit from customers as c1 where creditLimit > (select avg(creditLimit) from customers as c2 where c1.country=c2.country);

# Q-6
select c.customerName,p.amount from customers as c join payments as p on p.amount=(select max(amount) from payments order by amount desc);

# Q-7
create table students (
	student_id int primary key,
    student_name varchar(255) not null,
    email varchar(255) unique,
    age int check(age>=18)
);

# Q-8
alter table students add column phone_number varchar(255);

# Q-9
create table department (
	dept_id int primary key,
    dept_name varchar(255) not null,
    dept_loc varchar(255)
);
alter table department rename column dept_loc to department_loc;


# Q-10
insert into students(student_id,student_name,email,age,phone_number) values(1,'koushik','koushik@gmail.com',21,'1234567899');
insert into students(student_id,student_name,email,age,phone_number) values(2,'surya','surya@gmail.com',22,'1234554899');
insert into students(student_id,student_name,email,age,phone_number) values(3,'avinash','avinash@gmail.com',21,'1233567899');
insert into students(student_id,student_name,email,age,phone_number) values(4,'japan','japan@gmail.com',51,'1234467899');
insert into students(student_id,student_name,email,age,phone_number) values(5,'charitha','charitha@gmail.com',199,'1234237899');
select * from students;

# Q-11
update students set email='k@gmail.com' where student_id=1;
select * from students;

# Q-12
delete from students where student_id=1;
select * from students;


