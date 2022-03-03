# MY SQL EXCERCISE

This project used to manage Student information likename,email,mobileNo,password,dob,class
  ___

  ## TABLE 1 

  ```
  mysql> create table students (
    -> id int primary key auto_increment,
    -> name varchar(100) not null,
    -> email varchar(100) not null,
    -> mobile_no bigint not null,
    -> password varchar(100) not null,
    -> gender char(1) not null,
    -> dob date,
    -> created_date timestamp not null default current_timestamp,
    -> unique (email),
    -> check ( gender in ('M','F'))
    -> );
Query OK, 0 rows affected (0.05 sec)
  ```
  ## TABLE 2 

  ```
  mysql> create table class_info (
    -> id int primary key auto_increment,
    -> student_id int not null,
    -> class int not null,
    -> status varchar(20) not null,
    -> foreign key (student_id) references students(id),
    -> check( class >= 1 and class <=12),
    -> check (status in ('ACTIVE','INACTIVE'))
    -> );
Query OK, 0 rows affected (0.05 sec)
  ```
  mysql> show tables;

  
| Tables_in_students |
|:------------------:|
| class_info         |
| students           |


2 rows in set (0.00 sec)


