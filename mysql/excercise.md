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

## Feature 1 :
 * Student Registration


```
mysql> INSERT INTO students (id,name,email,mobile_no,password,gender,dob)
    -> VALUES ('9','tonytony','tony@gmail.com','2000','onepiece','M','2008-02-08'),
    ->        ('10','gajeel','gajeel@gmail.com','9000','fairy tail','M','2014-02-03'),
    ->        ('11','yagami','yagami@gmail.com','1000','deathnote','M','2019-02-16');
Query OK, 3 rows affected (0.02 sec)

```
## Feature 2 :
 * List all students

```
mysql> SELECT * FROM students;
```

| id | name     | email               | mobile_no | password    | gender | dob        | created_date        |
|:---:|:-------:|:-------------------:|:---------:|:------------:|:-----:|:----------:|:-------------------:|
|  1 | hinata   | hinata@mail.com     |     11000 | haikyuu     | M      | 2000-11-12 | 2022-03-03 11:58:18 |
|  2 | luffy    | monkey@mail.com     |     12000 | onepiece    | M      | 1999-05-15 | 2022-03-03 12:06:58 |
|  3 | zoro     | zoro@gmail.com      |     11000 | onepiece    | M      | 1999-03-08 | 2022-03-03 14:40:53 |
|  4 | sanji    | sanji@gmail.com     |     10000 | onepiece    | M      | 1999-07-18 | 2022-03-03 14:40:53 |
|  5 | hinata   | hinatachan@mail.com |      3000 | naruto      | F      | 1997-12-30 | 2022-03-03 12:22:23 |
|  6 | naruto   | naruto@mail.com     |     15000 | hinata      | M      | 1997-01-12 | 2022-03-03 12:22:23 |
|  7 | natsu    | natsu@gmail.com     |     13000 | fairy tail  | M      | 2006-07-11 | 2022-03-03 14:23:06 |
|  8 | nami     | nami@gmail.com      |      6000 | onepiece    | M      | 1999-07-18 | 2022-03-03 14:40:53 |
|  9 | tonytony | tony@gmail.com      |      2000 | onepiece    | M      | 2008-02-08 | 2022-03-03 14:47:09 |
| 10 | gajeel   | gajeel@gmail.com    |      9000 | fairy tail  | M      | 2014-02-03 | 2022-03-03 14:47:09 |
| 11 | yagami   | yagami@gmail.com    |      1000 | deathnote   | M      | 2019-02-16 | 2022-03-03 14:47:09 |
| 12 | killua   | killua@gmail.com    |      1200 | hunter      | M      | 2005-10-24 | 2022-03-03 14:31:04 |
| 13 | gon      | gon@gmail.com       |      1100 | hunter      | M      | 2005-12-14 | 2022-03-03 14:31:04 |
| 14 | kamichan | kami@gmail.com      |       100 | kami        | M      | 2012-08-14 | 2022-03-03 14:31:04 |
| 15 | sengoku  | sengoku@gmail.com   |      3100 | demonslayer | M      | 2021-06-14 | 2022-03-03 14:31:04 |


15 rows in set (0.00 sec)

## Feature 3 : 
* Login with email and password

```
mysql> SELECT * FROM students WHERE email='hinata@mail.com' AND password='haikyuu';
```


| id | name   | email           | mobile_no | password | gender | dob        | created_date        |
|:---:|------:|:---------------:|:---------:|:--------:|:------:|:-----------:|:------------------:|
|  1 | hinata | hinata@mail.com |     11000 | haikyuu  | M      | 2000-11-12 | 2022-03-03 11:58:18 |

1 row in set (0.00 sec)

## Feature 4 :
*    Update password

> before 

```
mysql> SELECT * FROM students WHERE id = 6;
+----+--------+-----------------+-----------+----------+--------+------------+---------------------+
| id | name   | email           | mobile_no | password | gender | dob        | created_date        |
+----+--------+-----------------+-----------+----------+--------+------------+---------------------+
|  6 | naruto | naruto@mail.com |     15000 | hinata   | M      | 1997-01-12 | 2022-03-03 12:22:23 |
+----+--------+-----------------+-----------+----------+--------+------------+---------------------+
1 row in set (0.00 sec)

```

>query
```
mysql> UPDATE students 
    -> SET password = 'naruto'
    -> WHERE id = 6;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

```
> After

```

mysql> SELECT * FROM students WHERE id = 6;
+----+--------+-----------------+-----------+----------+--------+------------+---------------------+
| id | name   | email           | mobile_no | password | gender | dob        | created_date        |
+----+--------+-----------------+-----------+----------+--------+------------+---------------------+
|  6 | naruto | naruto@mail.com |     15000 | naruto   | M      | 1997-01-12 | 2022-03-03 12:22:23 |
+----+--------+-----------------+-----------+----------+--------+------------+---------------------+
1 row in set (0.00 sec)

```

## Feature 5 :
* Enroll student into class

```
mysql> INSERT INTO class_info (id,student_id,class,status)
    -> VALUES ('9','9','5','ACTIVE');
Query OK, 1 row affected (0.02 sec)

```

```
mysql> SELECT * FROM class_info;
+----+------------+-------+----------+
| id | student_id | class | status   |
+----+------------+-------+----------+
|  1 |          1 |    10 | ACTIVE   |
|  2 |          2 |     9 | INACTIVE |
|  3 |          3 |    11 | ACTIVE   |
|  4 |          4 |     8 | ACTIVE   |
|  5 |          5 |     5 | ACTIVE   |
|  6 |          6 |     6 | ACTIVE   |
|  7 |          7 |     5 | INACTIVE |
|  8 |          8 |     4 | ACTIVE   |
|  9 |          9 |     5 | ACTIVE   |
| 10 |         10 |    10 | ACTIVE   |
| 11 |         11 |     1 | ACTIVE   |
| 12 |         12 |    12 | INACTIVE |
| 13 |         13 |     7 | ACTIVE   |
| 14 |         14 |     2 | ACTIVE   |
| 15 |         15 |    12 | ACTIVE   |
+----+------------+-------+----------+
15 rows in set (0.00 sec)

```

## Feature 6 :
 * Find Students who are enrolled in the given class
  
   * Find Students who are studying in 5th standard.

```

mysql> SELECT students.name,class_info.class FROM students INNER JOIN class_info ON students.id = class_info.id where class =5 ;

```
| name     | class |
|:--------:|:-----:|
| hinata   |     5 |
| natsu    |     5 |
| tonytony |     5 |


3 rows in set (0.00 sec)

# Feature 7 :
  * Update Student Class information
   
    * Update student from 5th standard to 6th standard.

```
mysql> UPDATE class_info
    -> set class = '6'
    -> WHERE class = 5;
Query OK, 3 rows affected (0.01 sec)
Rows matched: 3  Changed: 3  Warnings: 0

```
```
mysql> SELECT students.name,class_info.class FROM students INNER JOIN class_info ON students.id = class_info.id where class =5 ;
Empty set (0.00 sec)

```
```
mysql> SELECT students.name,class_info.class FROM students INNER JOIN class_info ON students.id = class_info.id where class =6 ;

```
| name     | class |
|:--------:|:-----:|
| hinata   |     6 |
| naruto   |     6 |
| natsu    |     6 |
| tonytony |     6 |


4 rows in set (0.00 sec)

## Feature 8 : 
 * Student withdrawn from  a Class

```
mysql> SELECT students.name,class_info.class FROM students INNER JOIN class_info ON students.id = class_info.id where class =12 ;

```
| name    | class |
|:-------:|:-----:|
| killua  |    12 |
| sengoku |    12 |


2 rows in set (0.00 sec)

Student named sengoku has withdrawn from classs
 
 ```
 mysql> delete from  class_info where id = 15;
Query OK, 1 row affected (0.02 sec)

 ```
 ```mysql> select * from class_info;
+----+------------+-------+----------+
| id | student_id | class | status   |
+----+------------+-------+----------+
|  1 |          1 |    10 | ACTIVE   |
|  2 |          2 |     9 | INACTIVE |
|  3 |          3 |    11 | ACTIVE   |
|  4 |          4 |     8 | ACTIVE   |
|  5 |          5 |     6 | ACTIVE   |
|  6 |          6 |     6 | ACTIVE   |
|  7 |          7 |     6 | INACTIVE |
|  8 |          8 |     5 | ACTIVE   |
|  9 |          9 |     6 | ACTIVE   |
| 10 |         10 |    10 | ACTIVE   |
| 11 |         11 |     1 | ACTIVE   |
| 12 |         12 |    12 | INACTIVE |
| 13 |         13 |     7 | ACTIVE   |
| 14 |         14 |     2 | ACTIVE   |
+----+------------+-------+----------+
14 rows in set (0.00 sec)


 ```


## Feature 9 :
 * Find student details who have not updated their Date Of Birth 

```
mysql> SELECT * FROM students WHERE dob is null;
Empty set (0.00 sec)
```
## Feature 10 :
* Find Total no of students actively studying in this school

```
mysql> SELECT COUNT(*) FROM class_info WHERE status = 'ACTIVE';

```
| COUNT(*) |
|:--------:|
|       12 |


1 row in set (0.02 sec)


```
mysql> SELECT * FROM class_info WHERE status = 'ACTIVE';

```

| id | student_id | class | status |
|:---:|:---------:|:-----:|:------:|
|  1 |          1 |    10 | ACTIVE |
|  3 |          3 |    11 | ACTIVE |
|  4 |          4 |     8 | ACTIVE |
|  5 |          5 |     6 | ACTIVE |
|  6 |          6 |     6 | ACTIVE |
|  8 |          8 |     4 | ACTIVE |
|  9 |          9 |     6 | ACTIVE |
| 10 |         10 |    10 | ACTIVE |
| 11 |         11 |     1 | ACTIVE |
| 13 |         13 |     7 | ACTIVE |
| 14 |         14 |     2 | ACTIVE |
| 15 |         15 |    12 | ACTIVE |

12 rows in set (0.00 sec)

## Feature 11 :
 *  Find Total no of students actively studying in each class

```
mysql> SELECT class,COUNT(*) FROM class_info WHERE status = 'ACTIVE' GROUP BY class ORDER BY class;

```
| class | COUNT(*) |
|:-----:|:--------:|
|     1 |        1 |
|     2 |        1 |
|     4 |        1 |
|     6 |        3 |
|     7 |        1 |
|     8 |        1 |
|    10 |        2 |
|    11 |        1 |
|    12 |        1 |


9 rows in set (0.00 sec)

## Feature 12 : 
* Find Total no of students actively studying each class which has less than 5 students.


```
mysql> SELECT class,COUNT(*) FROM class_info WHERE status = 'ACTIVE' GROUP BY class HAVING COUNT(*)<5;

```

| class | COUNT(*) |
|:-----:|:--------:|
|    10 |        2 |
|    11 |        1 |
|     8 |        1 |
|     6 |        3 |
|     4 |        1 |
|     1 |        1 |
|     7 |        1 |
|     2 |        1 |
|    12 |        1 |


9 rows in set (0.00 sec)

## Feature 13 :
 * Display student and class details 

```
mysql> SELECT students.name,class_info.class FROM students INNER JOIN class_info ON students.id = class_info.id;

```


| name     | class |
|:--------:|:------:|
| hinata   |    10 |
| luffy    |     9 |
| zoro     |    11 |
| sanji    |     8 |
| hinata   |     6 |
| naruto   |     6 |
| natsu    |     6 |
| nami     |     4 |
| tonytony |     6 |
| gajeel   |    10 |
| yagami   |     1 |
| killua   |    12 |
| gon      |     7 |
| kamichan |     2 |
| sengoku  |    12 |

15 rows in set (0.00 sec)

> Full details

```
mysql> SELECT * FROM students INNER JOIN class_info ON students.id = class_info.id;

```

| id | name     | email               | mobile_no | password    | gender | dob        | created_date        | id | student_id | class | status   |
|:---:|:----------:|:---------------------:|:----------:|:------------:|:-------:|:------------:|:---------------------:|:---:|:----------:|:------:|:--------:|
|  1 | hinata   | hinata@mail.com     |     11000 | haikyuu     | M      | 2000-11-12 | 2022-03-03 11:58:18 |  1 |          1 |    10 | ACTIVE   |
|  2 | luffy    | monkey@mail.com     |     12000 | onepiece    | M      | 1999-05-15 | 2022-03-03 12:06:58 |  2 |          2 |     9 | INACTIVE |
|  3 | zoro     | zoro@gmail.com      |     11000 | onepiece    | M      | 1999-03-08 | 2022-03-03 14:40:53 |  3 |          3 |    11 | ACTIVE   |
|  4 | sanji    | sanji@gmail.com     |     10000 | onepiece    | M      | 1999-07-18 | 2022-03-03 14:40:53 |  4 |          4 |     8 | ACTIVE   |
|  5 | hinata   | hinatachan@mail.com |      3000 | naruto      | F      | 1997-12-30 | 2022-03-03 12:22:23 |  5 |          5 |     6 | ACTIVE   |
|  6 | naruto   | naruto@mail.com     |     15000 | naruto      | M      | 1997-01-12 | 2022-03-03 12:22:23 |  6 |          6 |     6 | ACTIVE   |
|  7 | natsu    | natsu@gmail.com     |     13000 | fairy tail  | M      | 2006-07-11 | 2022-03-03 14:23:06 |  7 |          7 |     6 | INACTIVE |
|  8 | nami     | nami@gmail.com      |      6000 | onepiece    | M      | 1999-07-18 | 2022-03-03 14:40:53 |  8 |          8 |     4 | ACTIVE   |
|  9 | tonytony | tony@gmail.com      |      2000 | onepiece    | M      | 2008-02-08 | 2022-03-03 14:47:09 |  9 |          9 |     6 | ACTIVE   |
| 10 | gajeel   | gajeel@gmail.com    |      9000 | fairy tail  | M      | 2014-02-03 | 2022-03-03 14:47:09 | 10 |         10 |    10 | ACTIVE   |
| 11 | yagami   | yagami@gmail.com    |      1000 | deathnote   | M      | 2019-02-16 | 2022-03-03 14:47:09 | 11 |         11 |     1 | ACTIVE   |
| 12 | killua   | killua@gmail.com    |      1200 | hunter      | M      | 2005-10-24 | 2022-03-03 14:31:04 | 12 |         12 |    12 | INACTIVE |
| 13 | gon      | gon@gmail.com       |      1100 | hunter      | M      | 2005-12-14 | 2022-03-03 14:31:04 | 13 |         13 |     7 | ACTIVE   |
| 14 | kamichan | kami@gmail.com      |       100 | kami        | M      | 2012-08-14 | 2022-03-03 14:31:04 | 14 |         14 |     2 | ACTIVE   |
| 15 | sengoku  | sengoku@gmail.com   |      3100 | demonslayer | M      | 2021-06-14 | 2022-03-03 14:31:04 | 15 |         15 |    12 | ACTIVE   |


15 rows in set (0.00 sec)

## Feature 14 :
 * Display Student Details for the given input class
  
   * Class : 5th Standard Using Joins

```
mysql> SELECT * FROM students
 INNER JOIN class_info 
 ON students.id = class_info.id 
 WHERE class_info.class = 5;

Empty set (0.02 sec)

```

```
mysql> SELECT * FROM students INNER JOIN class_info ON students.id = class_info.id WHERE class_info.class = 5;

```

| id | name | email          | mobile_no | password | gender | dob        | created_date        | id | student_id | class | status |
|:----:|:------:|:---------------:|:---------:|:---------:|:--------:|:-----------:|:--------------------:|:---:|:------------:|:-------:|:------:|
|  8 | nami | nami@gmail.com |      6000 | onepiece | M      | 1999-07-18 | 2022-03-03 14:40:53 |  8 |          8 |     5 | ACTIVE |


1 row in set (0.00 sec)


## Feature 15 : 
  * Find Class for the given student email id 

```
mysql> select students.name,students.email,class_info.class from students inner join class_info on students.id = class_info.id where email = 'hinata@mail.com';
+--------+-----------------+-------+
| name   | email           | class |
+--------+-----------------+-------+
| hinata | hinata@mail.com |    10 |
+--------+-----------------+-------+
1 row in set (0.00 sec)

```


## Feature 16 :
 * Find Students who has not enrolled in a class

```
mysql> select * from students left join class_info on students.id = class_info.id where class is null;
+----+---------+-------------------+-----------+-------------+--------+------------+---------------------+------+------------+-------+--------+
| id | name    | email             | mobile_no | password    | gender | dob        | created_date        | id   | student_id | class | status |
+----+---------+-------------------+-----------+-------------+--------+------------+---------------------+------+------------+-------+--------+
| 15 | sengoku | sengoku@gmail.com |      3100 | demonslayer | M      | 2021-06-14 | 2022-03-03 14:31:04 | NULL |       NULL |  NULL | NULL   |
+----+---------+-------------------+-----------+-------------+--------+------------+---------------------+------+------------+-------+--------+
1 row in set (0.00 sec)


```
















