# ORANGE CYCLE

## Creating database

```

mysql> CREATE DATABASE Orange_cycle;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW SCHEMAS;
+--------------------+
| Database           |
+--------------------+
| FWSA               |
| Orange_cycle       |      |
| academy            |
| information_schema |
| mysql              |
| performance_schema |
| students           |
| sys                |
+--------------------+
9 rows in set (0.00 sec)

```
 ***

 ### Need to access database to create tables

 mysql> use Orange_cycle;
Database changed
 
## TABLE-1 User

### Creating table user
```
mysql> CREATE TABLE users(id int PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) not null,
email VARCHAR(20) UNIQUE NOT NULL,
password CHAR(20) NOT NULL,
ph_number bigint UNIQUE NOT NULL,
created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP);
Query OK, 0 rows affected (0.07 sec)

mysql> SHOW tables;
+------------------------+
| Tables_in_Orange_cycle |
+------------------------+
| users                   |
+------------------------+
1 row in set (0.00 sec)

``` 
 > describing "users" table 

 
 mysql> DESC users;

| Field        | Type        | Null | Key | Default           | Extra             |
|:-------------|:------------|:-----|:----|:------------------|:------------------|
| id           | int         | NO   | PRI | NULL              |                   |
| first_name   | varchar(20) | NO   |     | NULL              |                   |
| last_name    | varchar(20) | NO   |     | NULL              |                   |
| email        | varchar(20) | NO   | UNI | NULL              |                   |
| password     | char(20)    | NO   |     | NULL              |                   |
| ph_number    | bigint         | NO   | UNI | NULL              |                   |
| created_date | timestamp   | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |

7 rows in set (0.00 sec)

***

### inserting records in "users" table

```
INSERT INTO users VALUES(1,'admin','admin','admin@mail.com','admin','9876212321', now());
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM users;
+----+------------+-----------+----------------+----------+------------+---------------------+
| id | first_name | last_name | email          | password | ph_number  | created_date        |
+----+------------+-----------+----------------+----------+------------+---------------------+
|  1 | admin      | admin     | admin@mail.com | admin    | 9876212321 | 2022-03-23 13:12:18 |
+----+------------+-----------+----------------+----------+------------+---------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO users VALUES(2,'selva','raj','selva123@mail.com','selva1311','9876212342', now());
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO users VALUES(3,'karan','karan','karan342@mail.com','karan2311','95436212342', now());
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO users VALUES (4,'ace','avles','aceavles@mail.com','ace454346','9543645632', now()),                         (5,'shiva','shiva','shiva@mail.com','asdf1234','9589745632', now());
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

```
### Getting  data from "user" table


```
mysql> SELECT * FROM users;

```
| id | first_name | last_name | email             | password  | ph_number   | created_date        |
|:---|:-----------|:----------|:------------------|:----------|:------------|:--------------------|
|  1 | admin      | admin     | admin@mail.com    | admin     |  9876212321 | 2022-03-23 13:12:18 |
|  2 | selva      | raj       | selva123@mail.com | selva1311 |  9876212342 | 2022-03-23 13:14:39 |
|  3 | karan      | karan     | karan342@mail.com | karan2311 | 95436212342 | 2022-03-23 13:15:19 |
|  4 | ace        | avles     | aceavles@mail.com | ace454346 |  9543645632 | 2022-03-23 13:19:23 |
|  5 | shiva      | shiva     | shiva@mail.com    | asdf1234  |  9589745632 | 2022-03-23 13:19:23 |

5 rows in set (0.00 sec)


***

## TABLE- 2 roles

### Creating "role" table to identify admin from users 



```
mysql> create table roles (id int primary key auto_increment,user_id int,role varchar(20), foreign key (user_id) references users(id));
Query OK, 0 rows affected (0.04 sec)

```
> desc roles;


| Field   | Type        | Null | Key | Default | Extra          |
|:--------|:------------|:-----|:----|:--------|:---------------|
| id      | int         | NO   | PRI | NULL    | auto_increment |
| user_id | int         | YES  | MUL | NULL    |                |
| role    | varchar(20) | YES  |     | NULL    |                |


3 rows in set (0.00 sec)

### inserting records into roles

```
mysql> INSERT INTO roles VALUES (1,1,'admin');
Query OK, 1 row affected (0.02 sec)

```

```mysql> select * from roles;
+----+---------+-------+
| id | user_id | role  |
+----+---------+-------+
|  1 |       1 | admin |
+----+---------+-------+
1 row in set (0.00 sec)

```

***

## TABLE 3 products
 
### creating a table for products 

```
mysql> create table products(id int primary key auto_increment, name varchar(20) not null, barcode varchar(50) unique not null);
Query OK, 0 rows affected (0.06 sec)

```

> desc products;

| Field   | Type        | Null | Key | Default | Extra          |
|:--------|:------------|:-----|:----|:--------|:---------------|
| id      | int         | NO   | PRI | NULL    | auto_increment |
| name    | varchar(20) | NO   |     | NULL    |                |
| barcode | varchar(50) | NO   | UNI | NULL    |                |


### inserting data into "products"

```
mysql> insert into products values(1,'firebox tornado','897654532181'),
    ->                            (2,'cosmic twister','CO125643897634'),
    ->                            (3,'hero sprint','HO456732098612'),
    ->                            (4,'BSA CHAMP','B6754908123765');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

```
### fetching data from products

```
mysql> select * from products;
```

| id | name            | barcode        |
|:---|:----------------|:---------------|
|  1 | firebox tornado | 897654532181   |
|  2 | cosmic twister  | CO125643897634 |
|  3 | hero sprint     | HO456732098612 |
|  4 | BSA CHAMP       | B6754908123765 |

4 rows in set (0.00 sec)

***

## TABLE 4 products_price 

### creating "products_price" table
 * note price may fluctuate with time

 ```
 mysql> create table products_price(id int primary key auto_increment,product_id int not null,price int not null ,date timestamp not null default current_timestamp,foreign key (product_id) references products(id));
Query OK, 0 rows affected (0.05 sec)



 ```

> desc products_price


| Field      | Type      | Null | Key | Default           | Extra             |
|:-----------|:----------|:-----|:----|:------------------|:------------------|
| id         | int       | NO   | PRI | NULL              | auto_increment    |
| product_id | int       | NO   | MUL | NULL              |                   |
| price      | int       | NO   |     | NULL              |                   |
| date       | timestamp | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |

3 rows in set (0.00 sec)

### inserting data into products_price

```
mysql> insert into products_price values(1,1,'19999',now());
Query OK, 1 row affected (0.03 sec)
mysql> insert into products_price values(2,2,'16999',now()),
    ->                                  (3,3,'9999',now()),
    ->                                  (4,4,'6999',now());
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0
```

### fetching data from products_price

```
mysql> select * from products_price;
+----+------------+-------+---------------------+
| id | product_id | price | date                |
+----+------------+-------+---------------------+
|  1 |          1 | 19999 | 2022-03-23 15:20:38 |
|  2 |          2 | 16999 | 2022-03-23 15:22:04 |
|  3 |          3 |  9999 | 2022-03-23 15:22:04 |
|  4 |          4 |  6999 | 2022-03-23 15:22:04 |
+----+------------+-------+---------------------+
4 rows in set (0.00 sec)

```
***

## TABLE 5 products_details

### creating "prodcts_details" table

```
mysql> create table products_details(id int primary key auto_increment,product_id int not null,name varchar(20) not null,image_url varchar(120) not null,discription text(500),foreign key (product_id) references products(id));
Query OK, 0 rows affected (0.05 sec)

```
> desc products_details;

| Field       | Type         | Null | Key | Default | Extra          |
|:------------|:-------------|:------|:----|:-------|:---------------|
| id          | int          | NO   | PRI | NULL    | auto_increment |
| product_id  | int          | NO   | MUL | NULL    |                |
| name        | varchar(20)  | NO   |     | NULL    |                |
| image_url   | varchar(120) | NO   |     | NULL    |                |
| discription | text         | YES  |     | NULL    |                |

5 rows in set (0.00 sec)

### inserting data into "products_details"

```
mysql> insert into products_details values(1,1,'firebox tornado','https/:orangecycles/gallery/cycle/firefox/torando',' Tornado is a Alloy MTB that offers the functionality of casual city cycling. This stylish bike is a great choice for daily commute.')
    -> ;
Query OK, 1 row affected (0.02 sec)

mysql> insert into products_details values(2,2,'cosmic twister','https/:orangecycles/gallery/cycle/firefox/twister',' The bike is Equipped with V-Brake for power braking and One piece crank for extra strength')
    -> ;
Query OK, 1 row affected (0.02 sec)

mysql> insert into products_details values(3,3,'hero sprint','https/:orangecycles/gallery/cycle/hero/sprint','Model Name       Sprint Flash 29T 21 Speed  Brand Color       Black & Red  Mudguard       No Mudguard  Front Derailleur       S Ride  Shifters       21 Speed  Tire   Tire');
Query OK, 1 row affected (0.02 sec)

mysql> insert into products_details values(4,4,'BSA CHAMP','https/:orangecycles/gallery/cycle/BSA/champ','hunder is an all-consuming force that no one around can ignore. It is all about power, energy and empowerment that the rider experiences while riding this single speed, no-fuss ATB.');
Query OK, 1 row affected (0.02 sec)

```

> desc products_details;

mysql> select * from products_details;

| id | product_id | name            | image_url                                         | discription                                                                                                                                                                           |
|:----|:------------|:-----------------|:--------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  1 |          1 | firebox tornado | https/:orangecycles/gallery/cycle/firefox/torando |  Tornado is a Alloy MTB that offers the functionality of casual city cycling. This stylish bike is a great choice for daily commute.                                                  |
|  2 |          2 | cosmic twister  | https/:orangecycles/gallery/cycle/firefox/twister |  The bike is Equipped with V-Brake for power braking and One piece crank for extra strength                                                                                           |
|  3 |          3 | hero sprint     | https/:orangecycles/gallery/cycle/hero/sprint     | Model Name       Sprint Flash 29T 21 Speed  Brand Color       Black & Red  Mudguard       No Mudguard  Front Derailleur       S Ride  Shifters       21 Speed  Tire   Tire            |
|  4 |          4 | BSA CHAMP       | https/:orangecycles/gallery/cycle/BSA/champ       | hunder is an all-consuming force that no one around can ignore. It is all about power, energy and empowerment that the rider experiences while riding this single speed, no-fuss ATB. |

4 rows in set (0.02 sec)


## TABLE 6  ORDERS
 
### creating table "orders"

```
mysql> create table orders (id int primary key auto_increment,user_id int not null,product_id int not null,price_id int not null,quatntity int not null default '1',total bigint default '0');
Query OK, 0 rows affected (0.02 sec)

```
> mysql> desc orders;


| Field      | Type   | Null | Key | Default | Extra          |
|:-----------|:-------|:-----|:----|:--------|:---------------|
| id         | int    | NO   | PRI | NULL    | auto_increment |
| user_id    | int    | NO   |     | NULL    |                |
| product_id | int    | NO   |     | NULL    |                |
| price_id   | int    | NO   |     | NULL    |                |
| quatntity  | int    | NO   |     | 1       |                |
| total      | bigint | YES  |     | 0       |                |

6 rows in set (0.01 sec)
