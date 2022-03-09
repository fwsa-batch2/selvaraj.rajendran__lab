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
