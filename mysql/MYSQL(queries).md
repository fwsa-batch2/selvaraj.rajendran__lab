 #  MYSQL COMMANDS
 
 ## DATABASE

 * **To List all databases in MYSQL**

 >**Syntax**
 >
  >SHOW DATABASES;

```

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| FWSA               |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

```
**OR** 
>**Syntax**
 >
  >SHOW SCHEMAS;

  ```
  mysql> show schemas;
+--------------------+
| Database           |
+--------------------+
| FWSA               |
| academy            |
| information_schema |
| mysql              |
| performance_schema |
| students           |
| sys                |
+--------------------+
7 rows in set (0.00 sec)


  ```



***
  * **To create a database**

>**Syntax**
>
>CREATE DATABASE ***Databasename*** ; 


``` 
mysql> CREATE DATABASE students;
Query OK, 1 row affected (0.02 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| FWSA               |
| information_schema |
| mysql              |
| performance_schema |
| students           |
| sys                |
+--------------------+
6 rows in set (0.00 sec)


```
* **To access database**

>**Syntax**
>
> USE ***Databasename***;
>
>(USE,does not require a semicolon. (You can terminate such statements with a semicolon if you like; it does no harm.))
```
mysql> use students
Database changed
```
## TABLE

* **To create a table**

>**syntax**
>
>CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
); 

```
mysql> CREATE TABLE users(id int PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) not null,
email VARCHAR(20) UNIQUE NOT NULL,
password CHAR(20) NOT NULL,
ph_number bigint UNIQUE NOT NULL,
created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP);
Query OK, 0 rows affected (0.07 sec)

mysql> show tables;
+----------------+
| Tables_in_FWSA |
+----------------+
| Squad_TB       |
| user           |
+----------------+
2 rows in set (0.00 sec)

```
## DROP TABLE 

> syntax
>
>DROP TABLE table_name;

```
mysql> drop table user;
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+----------------+
| Tables_in_FWSA |
+----------------+
| Squad_TB       |
+----------------+
1 row in set (0.00 sec)

```

## ALTER TABLE

  **ADD COLUMN**

>syntax
>
>ALTER TABLE table_name
>
>ADD column_name datatype;

```
mysql> alter table user add column ph_number int ;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc user;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | int         | NO   | PRI | NULL    |       |
| name      | varchar(50) | YES  |     | NULL    |       |
| email     | varchar(50) | YES  |     | NULL    |       |
| ph_number | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

```

> **to specificaly add after a column**
>
>ALTER TABLE table_name  
>
>ADD new_column_name column_definition  
>
>[ FIRST | AFTER column_name ]; 

* with AFTER
```
mysql> alter table user add column address varchar(100) after name;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc user;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int          | NO   | PRI | NULL    |       |
| name      | varchar(50)  | YES  |     | NULL    |       |
| address   | varchar(100) | YES  |     | NULL    |       |
| email     | varchar(50)  | YES  |     | NULL    |       |
| ph_number | int          | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

```

* with FIRST