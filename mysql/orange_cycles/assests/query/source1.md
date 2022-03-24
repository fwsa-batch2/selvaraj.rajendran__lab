```
mysql> show schemas;
+--------------------+
| Database           |
+--------------------+
| FWSA               |
| Orange_cycles      |
| academy            |
| information_schema |
| mysql              |
| performance_schema |
| students           |
| sys                |
+--------------------+
8 rows in set (0.00 sec)

mysql> CREATE DATABSE Orange_cycle;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABSE Orange_cycle' at line 1
mysql> CREATE DATABASE Orange_cycle;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW SCHEMAS;
+--------------------+
| Database           |
+--------------------+
| FWSA               |
| Orange_cycle       |
| Orange_cycles      |
| academy            |
| information_schema |
| mysql              |
| performance_schema |
| students           |
| sys                |
+--------------------+
9 rows in set (0.00 sec)

mysql> CREATE TABLE user(id int PRIMARY KEY,first_name VARCHAR(20) NOT NULL,last_name VARCHAR(20) not null,email VARCHAR(20) UNIQUE NOT NULL),password CHAR(20),ph_number int UNIQUE NOT NULL, created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',password CHAR(20),ph_number int UNIQUE NOT NULL, created_date TIMESTAMP DEFAULT' at line 1
mysql> CREATE TABLE user(id int PRIMARY KEY,first_name VARCHAR(20) NOT NULL,last_name VARCHAR(20) not null,email VARCHAR(20) UNIQUE NOT NULL),password CHAR(20),ph_number int UNIQUE NOT NULL, created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',password CHAR(20),ph_number int UNIQUE NOT NULL, created_date TIMESTAMP DEFAULT' at line 1
mysql> CREATE TABLE user(id int PRIMARY KEY,first_name VARCHAR(20) NOT NULL,last_name VARCHAR(20) not null,email VARCHAR(20) UNIQUE NOT NULL),password CHAR(20),ph_number int UNIQUE NOT NULL, created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',password CHAR(20),ph_number int UNIQUE NOT NULL, created_date TIMESTAMP DEFAULT' at line 1
mysql> CREATE TABLE user(id int PRIMARY KEY,first_name VARCHAR(20) NOT NULL,last_name VARCHAR(20) not null,email VARCHAR(20) UNIQUE NOT NULL,password CHAR(20) NOT NULL,ph_number int UNIQUE NOT NULL, created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+-------------------------+
| Tables_in_Orange_cycles |
+-------------------------+
| Users                   |
| accessories             |
| address                 |
| bikes                   |
| category_type           |
| orders                  |
| products                |
| products_price          |
| review                  |
| roles                   |
| suppliers               |
| user                    |
+-------------------------+
12 rows in set (0.00 sec)

mysql> drop table user;
Query OK, 0 rows affected (0.03 sec)

mysql> use orange_cycle;
ERROR 1049 (42000): Unknown database 'orange_cycle'
mysql> use Orange_cycle;
Database changed
mysql> RENAME DATABASE orange_cycles;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE orange_cycles' at line 1
mysql> mysql> CREATE TABLE user(id int PRIMARY KEY,first_name VARCHAR(20) NOT NULL,last_name VARCHAR(20) not null,email VARCHAR(20) UNIQUE NOT NULL,password CHAR(20) NOT NULL,ph_number int UNIQUE NOT NULL, created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> CREATE TABLE user(id int PRIMARY KEY,first_name VARCHAR(20) NOT NULL,last' at line 1
mysql> Query OK, 0 rows affected (0.04 sec)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.04 sec)' at line 1
mysql> CREATE TABLE user(id int PRIMARY KEY,first_name VARCHAR(20) NOT NULL,last_name VARCHAR(20) not null,email VARCHAR(20) UNIQUE NOT NULL,password CHAR(20) NOT NULL,ph_number int UNIQUE NOT NULL, created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
Query OK, 0 rows affected (0.07 sec)

mysql> show tables
    -> ;
+------------------------+
| Tables_in_Orange_cycle |
+------------------------+
| user                   |
+------------------------+
1 row in set (0.00 sec)

mysql> ^C

^C
mysql> SHOW tables;
+------------------------+
| Tables_in_Orange_cycle |
+------------------------+
| user                   |
+------------------------+
1 row in set (0.00 sec)

mysql> DESC users;
ERROR 1146 (42S02): Table 'Orange_cycle.users' doesn't exist
mysql> alter table user rename users;
Query OK, 0 rows affected (0.04 sec)

mysql> DESC users;
+--------------+-------------+------+-----+-------------------+-------------------+
| Field        | Type        | Null | Key | Default           | Extra             |
+--------------+-------------+------+-----+-------------------+-------------------+
| id           | int         | NO   | PRI | NULL              |                   |
| first_name   | varchar(20) | NO   |     | NULL              |                   |
| last_name    | varchar(20) | NO   |     | NULL              |                   |
| email        | varchar(20) | NO   | UNI | NULL              |                   |
| password     | char(20)    | NO   |     | NULL              |                   |
| ph_number    | int         | NO   | UNI | NULL              |                   |
| created_date | timestamp   | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+--------------+-------------+------+-----+-------------------+-------------------+
7 rows in set (0.02 sec)

mysql> alter table users add constraints not null created_date;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'not null created_date' at line 1
mysql> alter table users modify created_date not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'not null' at line 1
mysql> alter table users modify created_date timestamp not null default current_timestamp;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC users;
+--------------+-------------+------+-----+-------------------+-------------------+
| Field        | Type        | Null | Key | Default           | Extra             |
+--------------+-------------+------+-----+-------------------+-------------------+
| id           | int         | NO   | PRI | NULL              |                   |
| first_name   | varchar(20) | NO   |     | NULL              |                   |
| last_name    | varchar(20) | NO   |     | NULL              |                   |
| email        | varchar(20) | NO   | UNI | NULL              |                   |
| password     | char(20)    | NO   |     | NULL              |                   |
| ph_number    | int         | NO   | UNI | NULL              |                   |
| created_date | timestamp   | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+--------------+-------------+------+-----+-------------------+-------------------+
7 rows in set (0.00 sec)

mysql> INSERT INTO users VALUES(1,'admin','admin','admin@mail.com','admin','9790938722');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> INSERT INTO users VALUES(1,'admin','admin','admin@mail.com','admin','9790938722',NOW());
ERROR 1264 (22003): Out of range value for column 'ph_number' at row 1
mysql> INSERT INTO users VALUES(1,'admin','admin','admin@mail.com','admin','9',NOW());
Query OK, 1 row affected (0.02 sec)

mysql> alter table users modify ph_number bigint;
Query OK, 1 row affected (0.10 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> DESC users;
+--------------+-------------+------+-----+-------------------+-------------------+
| Field        | Type        | Null | Key | Default           | Extra             |
+--------------+-------------+------+-----+-------------------+-------------------+
| id           | int         | NO   | PRI | NULL              |                   |
| first_name   | varchar(20) | NO   |     | NULL              |                   |
| last_name    | varchar(20) | NO   |     | NULL              |                   |
| email        | varchar(20) | NO   | UNI | NULL              |                   |
| password     | char(20)    | NO   |     | NULL              |                   |
| ph_number    | bigint      | YES  | UNI | NULL              |                   |
| created_date | timestamp   | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+--------------+-------------+------+-----+-------------------+-------------------+
7 rows in set (0.00 sec)

mysql> delete from users where id = 1;
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO users VALUES(1,'admin','admin','admin@mail.com','admin','9876212321',)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> INSERT INTO users VALUES(1,'admin','admin','admin@mail.com','admin','9876212321', now());
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM users;
+----+------------+-----------+----------------+----------+------------+---------------------+
| id | first_name | last_name | email          | password | ph_number  | created_date        |
+----+------------+-----------+----------------+----------+------------+---------------------+
|  1 | admin      | admin     | admin@mail.com | admin    | 9876212321 | 2022-03-23 13:12:18 |
+----+------------+-----------+----------------+----------+------------+---------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO users VALUES(2,'selva','raj','selva123@mail.com','selva1311','9876212321', now());
ERROR 1062 (23000): Duplicate entry '9876212321' for key 'users.ph_number'
mysql> INSERT INTO users VALUES(2,'selva','raj','selva123@mail.com','selva1311','9876212342', now());
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO users VALUES(3,'karan','karan','karan342@mail.com','karan2311','95436212342', now());
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO users VALUES(3,'karan','karan','karan342@mail.com','karan2311','95436212342', now())
    ->                         (4,'ace','avles','aceavles@mail.com','ace454346','9543645632', now())
    ->                         (5,'shiva','shiva','shiva@mail.com','asdf1234','9589745632', now())
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(4,'ace','avles','aceavles@mail.com','ace454346','9543645632', now())
          ' at line 2
mysql> INSERT INTO users VALUES(3,'karan','karan','karan342@mail.com','karan2311','95436212342', now()),                         (4,'ace','avles','aceavles@mail.com','ace454346','9543645632', now()),                         (5,'shiva','shiva','shiva@mail.com','asdf1234','9589745632', now());
ERROR 1062 (23000): Duplicate entry '3' for key 'users.PRIMARY'
mysql> INSERT INTO users VALUES (4,'ace','avles','aceavles@mail.com','ace454346','9543645632', now()),                         (5,'shiva','shiva','shiva@mail.com','asdf1234','9589745632', now());
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM users;
+----+------------+-----------+-------------------+-----------+-------------+---------------------+
| id | first_name | last_name | email             | password  | ph_number   | created_date        |
+----+------------+-----------+-------------------+-----------+-------------+---------------------+
|  1 | admin      | admin     | admin@mail.com    | admin     |  9876212321 | 2022-03-23 13:12:18 |
|  2 | selva      | raj       | selva123@mail.com | selva1311 |  9876212342 | 2022-03-23 13:14:39 |
|  3 | karan      | karan     | karan342@mail.com | karan2311 | 95436212342 | 2022-03-23 13:15:19 |
|  4 | ace        | avles     | aceavles@mail.com | ace454346 |  9543645632 | 2022-03-23 13:19:23 |
|  5 | shiva      | shiva     | shiva@mail.com    | asdf1234  |  9589745632 | 2022-03-23 13:19:23 |
+----+------------+-----------+-------------------+-----------+-------------+---------------------+
5 rows in set (0.00 sec)

mysql> create table roles (id int primary key auto_increment,user_id int,role varchar(20), foreign key (user_id) references users(id));
Query OK, 0 rows affected (0.04 sec)

mysql> desc roles;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| id      | int         | NO   | PRI | NULL    | auto_increment |
| user_id | int         | YES  | MUL | NULL    |                |
| role    | varchar(20) | YES  |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO roles VALUES (1,1,'admin');
Query OK, 1 row affected (0.02 sec)

mysql> select +from roles;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from roles' at line 1
mysql> select * from roles;
+----+---------+-------+
| id | user_id | role  |
+----+---------+-------+
|  1 |       1 | admin |
+----+---------+-------+
1 row in set (0.00 sec)

mysql> create table products(id int primary key auto_increment, name varchar(20) not null, barcode varchar(50) unique not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc products;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| id      | int         | NO   | PRI | NULL    | auto_increment |
| name    | varchar(20) | NO   |     | NULL    |                |
| barcode | varchar(50) | NO   | UNI | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> insert into products values(1,'firebox tornado','897654532181')
    -> inesrt into bikes values ('1','hero sprint','2','89765453281',
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inesrt into bikes values ('1','hero sprint','2','89765453281',' at line 2
mysql> insert into products values(1,'firebox tornado','897654532181'),
    ->                            (2,'cosmic twister','CO125643897634'),
    ->                            (3,'hero sprint','HO456732098612'),
    ->                            (4,'BSA CHAMP','B6754908123765');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from products;
+----+-----------------+----------------+
| id | name            | barcode        |
+----+-----------------+----------------+
|  1 | firebox tornado | 897654532181   |
|  2 | cosmic twister  | CO125643897634 |
|  3 | hero sprint     | HO456732098612 |
|  4 | BSA CHAMP       | B6754908123765 |
+----+-----------------+----------------+
4 rows in set (0.00 sec)

mysql> create table products_price(id int primary key auto_increment,product_id int not null, date timestamp not null default current_timestamp,foreign key (product_id) references products(id));
Query OK, 0 rows affected (0.05 sec)

mysql> desc products_price
    -> ;
+------------+-----------+------+-----+-------------------+-------------------+
| Field      | Type      | Null | Key | Default           | Extra             |
+------------+-----------+------+-----+-------------------+-------------------+
| id         | int       | NO   | PRI | NULL              | auto_increment    |
| product_id | int       | NO   | MUL | NULL              |                   |
| date       | timestamp | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+-----------+------+-----+-------------------+-------------------+
3 rows in set (0.00 sec)

mysql> desc products_price;
+------------+-----------+------+-----+-------------------+-------------------+
| Field      | Type      | Null | Key | Default           | Extra             |
+------------+-----------+------+-----+-------------------+-------------------+
| id         | int       | NO   | PRI | NULL              | auto_increment    |
| product_id | int       | NO   | MUL | NULL              |                   |
| date       | timestamp | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+-----------+------+-----+-------------------+-------------------+
3 rows in set (0.00 sec)

mysql> drop table products_price;
Query OK, 0 rows affected (0.04 sec)

mysql> create table products_price(id int primary key auto_increment,product_id int not null,price int not null ,date timestamp not null default current_timestamp,foreign key (product_id) references products(id));
Query OK, 0 rows affected (0.05 sec)

mysql> desc products_price;
+------------+-----------+------+-----+-------------------+-------------------+
| Field      | Type      | Null | Key | Default           | Extra             |
+------------+-----------+------+-----+-------------------+-------------------+
| id         | int       | NO   | PRI | NULL              | auto_increment    |
| product_id | int       | NO   | MUL | NULL              |                   |
| price      | int       | NO   |     | NULL              |                   |
| date       | timestamp | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+-----------+------+-----+-------------------+-------------------+
4 rows in set (0.01 sec)

mysql> insert into products_price values(1,1,'19999',);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> insert into products_price values(1,1,'19999');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into products_price values(1,1,'19999',now());
Query OK, 1 row affected (0.03 sec)

mysql> insert into products_price values(2,2,'16999',now()),
    ->                                  (3,3,'9999',now()),
    ->                                  (4,4,'6999',now());
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

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

mysql> create table products_details(id int primary key auto_increment,product_id int not null,name varchar(20) not null,image_url varchar(120) not null,
Query OK, 0 rows affected (0.05 sec)

mysql> desc products_details;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id          | int          | NO   | PRI | NULL    | auto_increment |
| product_id  | int          | NO   | MUL | NULL    |                |
| name        | varchar(20)  | NO   |     | NULL    |                |
| image_url   | varchar(120) | NO   |     | NULL    |                |
| discription | text         | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> insert into products_details values(1,1,'firebox tornado','https/:orangecycles/gallery/cycle/firefox/torando',' Tornado is a Alloy MTB that offers the functionality of casual city cycling. This stylish bike is a great choice for daily commute.')
    -> ;
Query OK, 1 row affected (0.02 sec)

mysql> insert into products_details values(2,2,'cosmic twister','https/:orangecycles/gallery/cycle/firefox/twister',' The bike is Equipped with V-Brake for power braking and One piece crank for extra strength')
    -> ;
Query OK, 1 row affected (0.02 sec)

mysql> insert into products_details values(3,3,'hero sprint','https/:orangecycles/gallery/cycle/hero/sprint','Model Name')
    -> 
    -> 
    ->     Sprint Flash 29T 21 Speed
    -> 
    -> Brand Color
    -> 
    -> 
    ->     Black & Red
    -> 
    -> Mudguard
    -> 
    -> 
    ->     No Mudguard
    -> 
    -> Front Derailleur
    -> 
    -> 
    ->     S Ride
    -> 
    -> Shifters
    -> 
    -> 
    ->     21 Speed
    -> 
    -> Tire
    -> 
    -> 
    -> Tire;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Sprint Flash 29T 21 Speed

Brand Color


    Black & Red

Mudguard


    No Mudg' at line 4
mysql> insert into products_details values(3,3,'hero sprint','https/:orangecycles/gallery/cycle/hero/sprint','Model Name       Sprint Flash 29T 21 Speed  Brand Color       Black & Red  Mudguard       No Mudguard  Front Derailleur       S Ride  Shifters       21 Speed  Tire   Tire');
Query OK, 1 row affected (0.02 sec)

mysql> insert into products_details values(4,4,'BSA CHAMP','https/:orangecycles/gallery/cycle/BSA/champ','hunder is an all-consuming force that no one around can ignore. It is all about power, energy and empowerment that the rider experiences while riding this single speed, no-fuss ATB.');
Query OK, 1 row affected (0.02 sec)

mysql> select * from products_details;
+----+------------+-----------------+---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| id | product_id | name            | image_url                                         | discription                                                                                                                                                                           |
+----+------------+-----------------+---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|  1 |          1 | firebox tornado | https/:orangecycles/gallery/cycle/firefox/torando |  Tornado is a Alloy MTB that offers the functionality of casual city cycling. This stylish bike is a great choice for daily commute.                                                  |
|  2 |          2 | cosmic twister  | https/:orangecycles/gallery/cycle/firefox/twister |  The bike is Equipped with V-Brake for power braking and One piece crank for extra strength                                                                                           |
|  3 |          3 | hero sprint     | https/:orangecycles/gallery/cycle/hero/sprint     | Model Name       Sprint Flash 29T 21 Speed  Brand Color       Black & Red  Mudguard       No Mudguard  Front Derailleur       S Ride  Shifters       21 Speed  Tire   Tire            |
|  4 |          4 | BSA CHAMP       | https/:orangecycles/gallery/cycle/BSA/champ       | hunder is an all-consuming force that no one around can ignore. It is all about power, energy and empowerment that the rider experiences while riding this single speed, no-fuss ATB. |
+----+------------+-----------------+---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
4 rows in set (0.02 sec)

mysql> create table orders (id int primary key auto_increment,user_id int not null,product_id int not null,price_id int not null,quatntity int not null default '1',total bigint default '0');
Query OK, 0 rows affected (0.02 sec)

mysql> desc orders;
+------------+--------+------+-----+---------+----------------+
| Field      | Type   | Null | Key | Default | Extra          |
+------------+--------+------+-----+---------+----------------+
| id         | int    | NO   | PRI | NULL    | auto_increment |
| user_id    | int    | NO   |     | NULL    |                |
| product_id | int    | NO   |     | NULL    |                |
| price_id   | int    | NO   |     | NULL    |                |
| quatntity  | int    | NO   |     | 1       |                |
| total      | bigint | YES  |     | 0       |                |
+------------+--------+------+-----+---------+----------------+
6 rows in set (0.01 sec)

mysql> ALTER TABLE orders ADD FOREIGN KEY (user_id) references users(id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE orders ADD FOREIGN KEY (products_id) references products(id);
ERROR 1072 (42000): Key column 'products_id' doesn't exist in table
mysql> ALTER TABLE orders ADD FOREIGN KEY (product_id) references products(id);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE orders ADD FOREIGN KEY (price_id) references price(id);
ERROR 1824 (HY000): Failed to open the referenced table 'price'
mysql> ALTER TABLE orders ADD FOREIGN KEY (price_id) references products_price(id);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc orders;
+------------+--------+------+-----+---------+----------------+
| Field      | Type   | Null | Key | Default | Extra          |
+------------+--------+------+-----+---------+----------------+
| id         | int    | NO   | PRI | NULL    | auto_increment |
| user_id    | int    | NO   | MUL | NULL    |                |
| product_id | int    | NO   | MUL | NULL    |                |
| price_id   | int    | NO   | MUL | NULL    |                |
| quatntity  | int    | NO   |     | 1       |                |
| total      | bigint | YES  |     | 0       |                |
+------------+--------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql> create table review (id int primary key auto_increment,user_id int not null,product_id int not null,date timestamp default current_timestamp,review_text text(500),stars char(5));
Query OK, 0 rows affected (0.04 sec)

mysql> drop table review;
Query OK, 0 rows affected (0.03 sec)

mysql> create table review (id int primary key auto_increment,user_id int not null,product_id int not null,date timestamp default current_timestamp,review_text text(500),stars char(5), foreign key (user_id) references users(id),foreign key (product_id) references products(id) );
Query OK, 0 rows affected (0.05 sec)

mysql> desc review;
+-------------+-----------+------+-----+-------------------+-------------------+
| Field       | Type      | Null | Key | Default           | Extra             |
+-------------+-----------+------+-----+-------------------+-------------------+
| id          | int       | NO   | PRI | NULL              | auto_increment    |
| user_id     | int       | NO   | MUL | NULL              |                   |
| product_id  | int       | NO   | MUL | NULL              |                   |
| date        | timestamp | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| review_text | text      | YES  |     | NULL              |                   |
| stars       | char(5)   | YES  |     | NULL              |                   |
+-------------+-----------+------+-----+-------------------+-------------------+
6 rows in set (0.00 sec)

mysql> desc orders;
+------------+--------+------+-----+---------+----------------+
| Field      | Type   | Null | Key | Default | Extra          |
+------------+--------+------+-----+---------+----------------+
| id         | int    | NO   | PRI | NULL    | auto_increment |
| user_id    | int    | NO   | MUL | NULL    |                |
| product_id | int    | NO   | MUL | NULL    |                |
| price_id   | int    | NO   | MUL | NULL    |                |
| quatntity  | int    | NO   |     | 1       |                |
| total      | bigint | YES  |     | 0       |                |
+------------+--------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql> alter table orders add column orders timestamp default current_timestamp;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders drop column orders;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders add column order_date timestamp default current_timestamp after;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> alter table orders add column order_date timestamp default current_timestamp;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc orders;
+------------+-----------+------+-----+-------------------+-------------------+
| Field      | Type      | Null | Key | Default           | Extra             |
+------------+-----------+------+-----+-------------------+-------------------+
| id         | int       | NO   | PRI | NULL              | auto_increment    |
| user_id    | int       | NO   | MUL | NULL              |                   |
| product_id | int       | NO   | MUL | NULL              |                   |
| price_id   | int       | NO   | MUL | NULL              |                   |
| quatntity  | int       | NO   |     | 1                 |                   |
| total      | bigint    | YES  |     | 0                 |                   |
| order_date | timestamp | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+-----------+------+-----+-------------------+-------------------+
7 rows in set (0.00 sec)

mysql> alter table orders drop column;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> alter table orders drop column order_date;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders add column order_date timestamp default current_timestamp not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc order_date;
ERROR 1146 (42S02): Table 'Orange_cycle.order_date' doesn't exist
mysql> desc orders;
+------------+-----------+------+-----+-------------------+-------------------+
| Field      | Type      | Null | Key | Default           | Extra             |
+------------+-----------+------+-----+-------------------+-------------------+
| id         | int       | NO   | PRI | NULL              | auto_increment    |
| user_id    | int       | NO   | MUL | NULL              |                   |
| product_id | int       | NO   | MUL | NULL              |                   |
| price_id   | int       | NO   | MUL | NULL              |                   |
| quatntity  | int       | NO   |     | 1                 |                   |
| total      | bigint    | YES  |     | 0                 |                   |
| order_date | timestamp | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+-----------+------+-----+-------------------+-------------------+
7 rows in set (0.00 sec)

mysql> | Field      | Type      | Null | Key | Default           | Extra             |
    -> +------------+-----------+------+-----+-------------------+-------------------+
    -> | id         | int       | NO   | PRI | NULL              | auto_increment    |
    -> | user_id    | int       | NO   | MUL | NULL              |                   |
    -> | product_id | int       | NO   | MUL | NULL              |                   |
    -> | price_id   | int       | NO   | MUL | NULL              |                   |
    -> | quatntity  | int       | NO   |     | 1                 |                   |
    -> | total      | bigint    | YES  |     | 0                 |                   |
    -> | order_date | timestamp | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '| Field      | Type      | Null | Key | Default           | Extra             |
' at line 1
mysql> insert into orders(1,4,1,1,1,19999,now());
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,4,1,1,1,19999,now())' at line 1
mysql> insert into orders(1,'4','1','1','1','19999',now());
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,'4','1','1','1','19999',now())' at line 1
mysql> insert into orders(1,'4','1','1','1','19999');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,'4','1','1','1','19999')' at line 1
mysql> insert into orders(1,'4','1','1','1','1');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,'4','1','1','1','1')' at line 1
mysql> insert into orders(1,4,1,1,'1','19999');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,4,1,1,'1','19999')' at line 1
mysql> insert into orders values(1,4,1,1,'1','19999');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into orders values(1,4,1,1,'1','19999',now());
Query OK, 1 row affected (0.02 sec)

mysql> insert into orders values(1,5,4,4,'1','6999',now());
ERROR 1062 (23000): Duplicate entry '1' for key 'orders.PRIMARY'
mysql> insert into orders values(2,5,4,4,'1','6999',now());
Query OK, 1 row affected (0.02 sec)

mysql> desc product_details;
ERROR 1146 (42S02): Table 'Orange_cycle.product_details' doesn't exist
mysql> select * from oders;
ERROR 1146 (42S02): Table 'Orange_cycle.oders' doesn't exist
mysql> select * from orders;
+----+---------+------------+----------+-----------+-------+---------------------+
| id | user_id | product_id | price_id | quatntity | total | order_date          |
+----+---------+------------+----------+-----------+-------+---------------------+
|  1 |       4 |          1 |        1 |         1 | 19999 | 2022-03-24 09:38:47 |
|  2 |       5 |          4 |        4 |         1 |  6999 | 2022-03-24 11:37:50 |
+----+---------+------------+----------+-----------+-------+---------------------+
2 rows in set (0.01 sec)

mysql> desc review;
+-------------+-----------+------+-----+-------------------+-------------------+
| Field       | Type      | Null | Key | Default           | Extra             |
+-------------+-----------+------+-----+-------------------+-------------------+
| id          | int       | NO   | PRI | NULL              | auto_increment    |
| user_id     | int       | NO   | MUL | NULL              |                   |
| product_id  | int       | NO   | MUL | NULL              |                   |
| date        | timestamp | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| review_text | text      | YES  |     | NULL              |                   |
| stars       | char(5)   | YES  |     | NULL              |                   |
+-------------+-----------+------+-----+-------------------+-------------------+
6 rows in set (0.00 sec)

mysql> insert into review values(1,5,4,now(),'i bought bsa champ from orange cycle for i am happy to see my kid having great time with his new cycle') 
    -> ;
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into review values(1,5,4,now(),'i bought bsa champ from orange cycle for i am happy to see my kid having great time with his new cycle');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into review values(1,5,4,now(),'i bought bsa champ from orange cycle for i am happy to see my kid having great time with his new cycle','four');
Query OK, 1 row affected (0.00 sec)

mysql> select * from review;
+----+---------+------------+---------------------+--------------------------------------------------------------------------------------------------------+-------+
| id | user_id | product_id | date                | review_text                                                                                            | stars |
+----+---------+------------+---------------------+--------------------------------------------------------------------------------------------------------+-------+
|  1 |       5 |          4 | 2022-03-24 11:46:35 | i bought bsa champ from orange cycle for i am happy to see my kid having great time with his new cycle | four  |
+----+---------+------------+---------------------+--------------------------------------------------------------------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> show tables;
+------------------------+
| Tables_in_Orange_cycle |
+------------------------+
| orders                 |
| products               |
| products_details       |
| products_price         |
| review                 |
| roles                  |
| users                  |
+------------------------+
7 rows in set (0.02 sec)

mysql> desc users;
+--------------+-------------+------+-----+-------------------+-------------------+
| Field        | Type        | Null | Key | Default           | Extra             |
+--------------+-------------+------+-----+-------------------+-------------------+
| id           | int         | NO   | PRI | NULL              |                   |
| first_name   | varchar(20) | NO   |     | NULL              |                   |
| last_name    | varchar(20) | NO   |     | NULL              |                   |
| email        | varchar(20) | NO   | UNI | NULL              |                   |
| password     | char(20)    | NO   |     | NULL              |                   |
| ph_number    | bigint      | YES  | UNI | NULL              |                   |
| created_date | timestamp   | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+--------------+-------------+------+-----+-------------------+-------------------+
7 rows in set (0.00 sec)

mysql> show tables;
+------------------------+
| Tables_in_Orange_cycle |
+------------------------+
| orders                 |
| products               |
| products_details       |
| products_price         |
| review                 |
| roles                  |
| users                  |
+------------------------+
7 rows in set (0.00 sec)

mysql> show schmas;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'schmas' at line 1
mysql> schemas;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'schemas' at line 1
mysql> use schemas;
ERROR 1049 (42000): Unknown database 'schemas'
mysql> show schemas;
+--------------------+
| Database           |
+--------------------+
| FWSA               |
| Orange_cycle       |
| Orange_cycles      |
| academy            |
| information_schema |
| mysql              |
| performance_schema |
| students           |
| sys                |
+--------------------+
9 rows in set (0.02 sec)


```