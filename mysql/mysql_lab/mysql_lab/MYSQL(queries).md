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
mysql> create table user (id int primary key,name varchar(50),email varchar (50));
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+----------------+
| Tables_in_FWSA |
+----------------+
| Squad_TB       |
| user           |
+----------------+
2 rows in set (0.00 sec)


```
**DROP TABLE**

>syntax
>
>DROP TABLE table_name; 

```
mysql> drop table user;
Query OK, 0 rows affected (0.03 sec)


```

### **ALTER TABLE**

* **TO ADD COLUMN**

>SYNTAX
>
>ALTER TABLE table_name
>
>ADD column_name datatype; 

```
ysql> alter table user add column ph_number int ;
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

 * **To specifically add add after a column**

>SYNTAX
>    ALTER TABLE table_name  
>
> ADD new_column_name column_definition  
>
> AFTER column_name;  


  **_NOTE :_**  
  
       it tells MySQL where in the table to create the column. If this parameter is not specified, the new column will be added to the end of the table.

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

* **To add multiple column**


>SYNTAX
>
>ALTER TABLE table_name
>
>ADD new_column_name column_definition 
> 
>[ FIRST | AFTER column_name ],
>  
>ADD new_column_name column_definition 
> 
>[ FIRST | AFTER column_name ],  
>  ...  
>;  

```
mysql> alter table user add column password varchar(50) after email, add date date;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc user;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int          | NO   | PRI | NULL    |       |
| name      | varchar(50)  | YES  |     | NULL    |       |
| address   | varchar(100) | YES  |     | NULL    |       |
| email     | varchar(50)  | YES  |     | NULL    |       |
| password  | varchar(50)  | YES  |     | NULL    |       |
| ph_number | int          | YES  |     | NULL    |       |
| date      | date         | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
7 rows in set (0.02 sec)

```