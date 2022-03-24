# ORANGE CYCLES

```
mysql> CREATE DATABASE Orange_cycles;
Query OK, 1 row affected (0.02 sec)

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

mysql> USE Orange_cycles
Database changed

```

```
CREATE TABLE Users ( id int primary key auto_increment,Name varchar(20) not null,email varchar(50) unique not null,password char(50),ph_number bigint(13) not null)
```
```
show tables;
ALTER TABLE Users DROP COLUMN gender;
desc Users;
ALTER TABLE Users  ADD COLUMN  first_name varchar(20) not null AFTER id;
ALTER TABLE Users  MODIFY COLUMN  password char(50) not null;
ALTER TABLE Users  ADD COLUMN  gender varchar(8) check(gender in ('Male','Female','other')) AFTER password;
```

```
 CREATE TABLE bikes( id int primary key auto_increment ,Name varchar(50)unique not null,category_id  int,barcode varchar(50) unique not null,FOREIGN KEY (category_id) REFERENCES Category(id) );

```

create table orders (id int primary key auto_increment,
quantity int not null DEFAULT '1',
price int, FOREIGN KEY (price) REFERENCES bikes_price(id),
bike_id int, FOREIGN KEY (bike_id) REFERENCES bikes(id));

```
mysql> create table orders (id int primary key auto_increment, quantity int not null DEFAULT '1', price int, FOREIGN KEY (price) REFERENCES bike_price(id), bike_id int, FOREIGN KEY (bike_id) REFERENCES bikes(id));
Query OK, 0 rows affected (0.05 sec)

```
```
mysql> alter table orders drop COLUMN bike_id;
ERROR 1828 (HY000): Cannot drop column 'bike_id': needed in a foreign key constraint 'orders_ibfk_2'
mysql> alter table orders drop foreign key orders_ibfk_2;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0



```

```
mysql> create table review(id int primary key auto_increment,user_id int,product_id int,review_text text(500),foreign key (user_id) references Users(id),foreign key (product_id) references products(id));
Query OK, 0 rows affected (0.05 sec)

```
```
mysql> alter table Users add column address_id varchar(120);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> create table address (id int primary key auto_increment, address1 varchar(120)not null,address2 varchar(120) default 'none', city varchar(100)
not null,state varchar (50) not null, country varchar(50) not null, pincode int not null);
Query OK, 0 rows affected (0.04 sec)

```
```
mysql> create table suppliers(id int primary key auto_increment,firstname varchar(50) not null,lastname varchar(50)not null, email varchar(50) not null ,ph_number int not null);
Query OK, 0 rows affected (0.05 sec)

```

alter table products add foreign key (supplier_id) references suppliers(id);
