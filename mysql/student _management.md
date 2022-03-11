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

mysql> show tables;
+--------------------+
| Tables_in_students |
+--------------------+
| students           |
+--------------------+
1 row in set (0.00 sec)

mysql> desc students
    -> ;
+--------------+--------------+------+-----+-------------------+-------------------+
| Field        | Type         | Null | Key | Default           | Extra             |
+--------------+--------------+------+-----+-------------------+-------------------+
| id           | int          | NO   | PRI | NULL              | auto_increment    |
| name         | varchar(100) | NO   |     | NULL              |                   |
| email        | varchar(100) | NO   | UNI | NULL              |                   |
| mobile_no    | bigint       | NO   |     | NULL              |                   |
| password     | varchar(100) | NO   |     | NULL              |                   |
| gender       | char(1)      | NO   |     | NULL              |                   |
| dob          | date         | YES  |     | NULL              |                   |
| created_date | timestamp    | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+--------------+--------------+------+-----+-------------------+-------------------+
8 rows in set (0.00 sec)

```

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

mysql> show tables;
+--------------------+
| Tables_in_students |
+--------------------+
| class_info         |
| students           |
+--------------------+
2 rows in set (0.00 sec)

```
INSERT INTO students (name,email,mobile_no,password,gender,dob)

INSERT INTO students (name,email,mobile_no,password,gender,dob)
    values ('killua','killua@gmail.com','1200','hunter','M','2005-10-24'),
           ('gon','gon@gmail.com','1100','hunter','M','2005-12-14'),
            ('kamichan','kami@gmail.com','100','kami','M','2012-08-14'),
            ('sengoku','sengoku@gmail.com','3100','demonslayer','M','2021-06-14');
