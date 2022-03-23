```

Database changed
mysql> select * from students;
+----+----------+---------------------+-----------+-------------+--------+------------+---------------------+
| id | name     | email               | mobile_no | password    | gender | dob        | created_date        |
+----+----------+---------------------+-----------+-------------+--------+------------+---------------------+
|  1 | hinata   | hinata@mail.com     |     11000 | haikyuu     | M      | 2000-11-12 | 2022-03-03 11:58:18 |
|  2 | luffy    | monkey@mail.com     |     12000 | onepiece    | M      | 1999-05-15 | 2022-03-03 12:06:58 |
|  3 | zoro     | zoro@gmail.com      |     11000 | onepiece    | M      | 1999-03-08 | 2022-03-03 14:40:53 |
|  4 | sanji    | sanji@gmail.com     |     10000 | onepiece    | M      | 1999-07-18 | 2022-03-03 14:40:53 |
|  5 | hinata   | hinatachan@mail.com |      3000 | naruto      | F      | 1997-12-30 | 2022-03-03 12:22:23 |
|  6 | naruto   | naruto@mail.com     |     15000 | naruto      | M      | 1997-01-12 | 2022-03-03 12:22:23 |
|  7 | natsu    | natsu@gmail.com     |     13000 | fairy tail  | M      | 2006-07-11 | 2022-03-03 14:23:06 |
|  8 | nami     | nami@gmail.com      |      6000 | onepiece    | M      | 1999-07-18 | 2022-03-03 14:40:53 |
|  9 | tonytony | tony@gmail.com      |      2000 | onepiece    | M      | 2008-02-08 | 2022-03-03 14:47:09 |
| 10 | gajeel   | gajeel@gmail.com    |      9000 | fairy tail  | M      | 2014-02-03 | 2022-03-03 14:47:09 |
| 11 | yagami   | yagami@gmail.com    |      1000 | deathnote   | M      | 2019-02-16 | 2022-03-03 14:47:09 |
| 12 | killua   | killua@gmail.com    |      1200 | hunter      | M      | 2005-10-24 | 2022-03-03 14:31:04 |
| 13 | gon      | gon@gmail.com       |      1100 | hunter      | M      | 2005-12-14 | 2022-03-03 14:31:04 |
| 14 | kamichan | kami@gmail.com      |       100 | kami        | M      | 2012-08-14 | 2022-03-03 14:31:04 |
| 15 | sengoku  | sengoku@gmail.com   |      3100 | demonslayer | M      | 2021-06-14 | 2022-03-03 14:31:04 |
+----+----------+---------------------+-----------+-------------+--------+------------+---------------------+
15 rows in set (0.01 sec)

mysql> select * from class_info;
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

mysql> select students.id,students.name,class_info from students left join class_info on student.id = class_info.id where class is null;
ERROR 1054 (42S22): Unknown column 'class_info' in 'field list'
mysql> select students.id,students.name,class_info.class from students left join class_info on student.id = class_info.id where class is null;
ERROR 1054 (42S22): Unknown column 'student.id' in 'on clause'
mysql> select * from students left join class_info on student.id = class_info.id where class is null;
ERROR 1054 (42S22): Unknown column 'student.id' in 'on clause'
mysql> select * from student left join class_info on student.id = class_info.id where class is null;
ERROR 1146 (42S02): Table 'students.student' doesn't exist
mysql> select * from students left join class_info on students.id = class_info.id where class is null;
+----+---------+-------------------+-----------+-------------+--------+------------+---------------------+------+------------+-------+--------+
| id | name    | email             | mobile_no | password    | gender | dob        | created_date        | id   | student_id | class | status |
+----+---------+-------------------+-----------+-------------+--------+------------+---------------------+------+------------+-------+--------+
| 15 | sengoku | sengoku@gmail.com |      3100 | demonslayer | M      | 2021-06-14 | 2022-03-03 14:31:04 | NULL |       NULL |  NULL | NULL   |
+----+---------+-------------------+-----------+-------------+--------+------------+---------------------+------+------------+-------+--------+
1 row in set (0.00 sec)

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

mysql> CREATE database selva;
Query OK, 1 row affected (0.03 sec)

mysql> use selva
Database changed
mysql> create table ace ( id int (11) name varchar(20) );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name varchar(20) )' at line 1
mysql> create table ace ( id int (11) auto_increment, name varchar(20) );
ERROR 1075 (42000): Incorrect table definition; there can be only one auto column and it must be defined as a key
mysql> create table ace ( id int (11) auto_increment primary key, name varchar(20) );
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> drop table ace primary key;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primary key' at line 1
mysql> drop table ace ;
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
Empty set (0.00 sec)

mysql> create  table ace ( int auto_increment not null , name varchar(20) unique not null ,time timestamp);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'int auto_increment not null , name varchar(20) unique not null ,time timestamp)' at line 1
mysql> create  table ace ( int auto_increment, name varchar(20) unique not null ,time timestamp);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'int auto_increment, name varchar(20) unique not null ,time timestamp)' at line 1
mysql> create  table ace (id int auto_increment not null , name varchar(20) unique not null ,time timestamp);
ERROR 1075 (42000): Incorrect table definition; there can be only one auto column and it must be defined as a key
mysql> create  table ace (id int auto_increment unique, name varchar(20) unique not null ,time timestamp);
Query OK, 0 rows affected (0.08 sec)

mysql> create  table ace1 (id int auto_increment unique, name varchar(20) unique not null ,time timestamp not null default current_timestamp);
Query OK, 0 rows affected (0.04 sec)

mysql> desc ace;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int         | NO   | PRI | NULL    | auto_increment |
| name  | varchar(20) | NO   | UNI | NULL    |                |
| time  | timestamp   | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> desc ace1;
+-------+-------------+------+-----+-------------------+-------------------+
| Field | Type        | Null | Key | Default           | Extra             |
+-------+-------------+------+-----+-------------------+-------------------+
| id    | int         | NO   | PRI | NULL              | auto_increment    |
| name  | varchar(20) | NO   | UNI | NULL              |                   |
| time  | timestamp   | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-------+-------------+------+-----+-------------------+-------------------+
3 rows in set (0.01 sec)

mysql> insert into ace ( id , name , time )
    -> values ('1','selva',now() );
Query OK, 1 row affected (0.01 sec)

mysql> select * from ace;
+----+-------+---------------------+
| id | name  | time                |
+----+-------+---------------------+
|  1 | selva | 2022-03-14 12:53:50 |
+----+-------+---------------------+
1 row in set (0.00 sec)

mysql> insert into ace1 ( name ) values ('selva');
Query OK, 1 row affected (0.02 sec)

mysql> select * from ace1;
+----+-------+---------------------+
| id | name  | time                |
+----+-------+---------------------+
|  1 | selva | 2022-03-14 12:55:21 |
+----+-------+---------------------+
1 row in set (0.00 sec)

mysql> insert into ace ( id , name , time ) values ('2','selva',);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> insert into ace ( id , name) values ('2','selva',);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> insert into ace ( id , name) values ('2','selva');
ERROR 1062 (23000): Duplicate entry 'selva' for key 'ace.name'
mysql> insert into ace ( id , name) values ('2','selva1');
Query OK, 1 row affected (0.02 sec)

mysql> select * from ace;
+----+--------+---------------------+
| id | name   | time                |
+----+--------+---------------------+
|  1 | selva  | 2022-03-14 12:53:50 |
|  2 | selva1 | NULL                |
+----+--------+---------------------+
2 rows in set (0.00 sec)

mysql> show schemas;
+--------------------+
| Database           |
+--------------------+
| FWSA               |
| academy            |
| information_schema |
| mysql              |
| performance_schema |
| selva              |
| students           |
| sys                |
+--------------------+
8 rows in set (0.00 sec)

mysql> drop database selva;
Query OK, 2 rows affected (0.05 sec)

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

mysql> use sys
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-----------------------------------------------+
| Tables_in_sys                                 |
+-----------------------------------------------+
| host_summary                                  |
| host_summary_by_file_io                       |
| host_summary_by_file_io_type                  |
| host_summary_by_stages                        |
| host_summary_by_statement_latency             |
| host_summary_by_statement_type                |
| innodb_buffer_stats_by_schema                 |
| innodb_buffer_stats_by_table                  |
| innodb_lock_waits                             |
| io_by_thread_by_latency                       |
| io_global_by_file_by_bytes                    |
| io_global_by_file_by_latency                  |
| io_global_by_wait_by_bytes                    |
| io_global_by_wait_by_latency                  |
| latest_file_io                                |
| memory_by_host_by_current_bytes               |
| memory_by_thread_by_current_bytes             |
| memory_by_user_by_current_bytes               |
| memory_global_by_current_bytes                |
| memory_global_total                           |
| metrics                                       |
| processlist                                   |
| ps_check_lost_instrumentation                 |
| schema_auto_increment_columns                 |
| schema_index_statistics                       |
| schema_object_overview                        |
| schema_redundant_indexes                      |
| schema_table_lock_waits                       |
| schema_table_statistics                       |
| schema_table_statistics_with_buffer           |
| schema_tables_with_full_table_scans           |
| schema_unused_indexes                         |
| session                                       |
| session_ssl_status                            |
| statement_analysis                            |
| statements_with_errors_or_warnings            |
| statements_with_full_table_scans              |
| statements_with_runtimes_in_95th_percentile   |
| statements_with_sorting                       |
| statements_with_temp_tables                   |
| sys_config                                    |
| user_summary                                  |
| user_summary_by_file_io                       |
| user_summary_by_file_io_type                  |
| user_summary_by_stages                        |
| user_summary_by_statement_latency             |
| user_summary_by_statement_type                |
| version                                       |
| wait_classes_global_by_avg_latency            |
| wait_classes_global_by_latency                |
| waits_by_host_by_latency                      |
| waits_by_user_by_latency                      |
| waits_global_by_latency                       |
| x$host_summary                                |
| x$host_summary_by_file_io                     |
| x$host_summary_by_file_io_type                |
| x$host_summary_by_stages                      |
| x$host_summary_by_statement_latency           |
| x$host_summary_by_statement_type              |
| x$innodb_buffer_stats_by_schema               |
| x$innodb_buffer_stats_by_table                |
| x$innodb_lock_waits                           |
| x$io_by_thread_by_latency                     |
| x$io_global_by_file_by_bytes                  |
| x$io_global_by_file_by_latency                |
| x$io_global_by_wait_by_bytes                  |
| x$io_global_by_wait_by_latency                |
| x$latest_file_io                              |
| x$memory_by_host_by_current_bytes             |
| x$memory_by_thread_by_current_bytes           |
| x$memory_by_user_by_current_bytes             |
| x$memory_global_by_current_bytes              |
| x$memory_global_total                         |
| x$processlist                                 |
| x$ps_digest_95th_percentile_by_avg_us         |
| x$ps_digest_avg_latency_distribution          |
| x$ps_schema_table_statistics_io               |
| x$schema_flattened_keys                       |
| x$schema_index_statistics                     |
| x$schema_table_lock_waits                     |
| x$schema_table_statistics                     |
| x$schema_table_statistics_with_buffer         |
| x$schema_tables_with_full_table_scans         |
| x$session                                     |
| x$statement_analysis                          |
| x$statements_with_errors_or_warnings          |
| x$statements_with_full_table_scans            |
| x$statements_with_runtimes_in_95th_percentile |
| x$statements_with_sorting                     |
| x$statements_with_temp_tables                 |
| x$user_summary                                |
| x$user_summary_by_file_io                     |
| x$user_summary_by_file_io_type                |
| x$user_summary_by_stages                      |
| x$user_summary_by_statement_latency           |
| x$user_summary_by_statement_type              |
| x$wait_classes_global_by_avg_latency          |
| x$wait_classes_global_by_latency              |
| x$waits_by_host_by_latency                    |
| x$waits_by_user_by_latency                    |
| x$waits_global_by_latency                     |
+-----------------------------------------------+
101 rows in set (0.00 sec)

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
7 rows in set (0.01 sec)

mysql> CREATE DATABASE Orange_cycles;
Query OK, 1 row affected (0.02 sec)

mysql> ^C^C^C^C

^C
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

mysql> use Orange
ERROR 1049 (42000): Unknown database 'Orange'
mysql> USE Orange_cycle
ERROR 1049 (42000): Unknown database 'Orange_cycle'
mysql> USE Orange_cycles
Database changed
mysql> 
mysql> CREATE TABLE Users ( id int primary key auto_
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'auto_' at line 1
mysql> select user from mysql.user;
+------------------+
| user             |
+------------------+
| ACE              |
| debian-sys-maint |
| mysql.infoschema |
| mysql.session    |
| mysql.sys        |
| root             |
+------------------+
6 rows in set (0.00 sec)

mysql> select users from mysql.user;
ERROR 1054 (42S22): Unknown column 'users' in 'field list'
mysql> show tables;
Empty set (0.00 sec)

mysql> CREATE TABLE Users ( id int primary key auto_increment,Name varchar(20) not null,email varchar(50) unique not null,password char(50),ph_number bigint(13) not null);
ERROR 1050 (42S01): Table 'Users' already exists
mysql> select* from Users;
Empty set (0.00 sec)

mysql> desc Users;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| id        | int         | NO   | PRI | NULL    | auto_increment |
| Name      | varchar(20) | NO   |     | NULL    |                |
| email     | varchar(50) | NO   | UNI | NULL    |                |
| password  | char(50)    | YES  |     | NULL    |                |
| ph_number | bigint      | NO   |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

mysql> show tables;
+-------------------------+
| Tables_in_Orange_cycles |
+-------------------------+
| Users                   |
+-------------------------+
1 row in set (0.00 sec)

mysql> show tables;
+-------------------------+
| Tables_in_Orange_cycles |
+-------------------------+
| Category                |
| Users                   |
+-------------------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO Category (id,Name)
values('Mountain bike','City bike','BMX bicyce','Hybrid bike','Fat bike','Folding cycle','Kids cycle','Helments','Bags',' Cycle locks' ,'Water bottle');INSERT INTO Category (id,Name)
^C
mysql> values('Mountain bike','City bike','BMX bicyce','Hybrid bike','Fat bike','Folding cycle','Kids cycle','Helments','Bags',' Cycle locks' ,'Water bottle')
    -> 
    -> 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '('Mountain bike','City bike','BMX bicyce','Hybrid bike','Fat bike','Folding cycl' at line 1
mysql> INSERT INTO Category (id,Name)
    -> values('Mountain bike','City bike','BMX bicyce','Hybrid bike','Fat bike','Folding cycle','Kids cycle','Helments','Bags',' Cycle locks' ,'Water bottle');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> INSERT INTO Category values('Mountain bike','City bike','BMX bicyce','Hybrid bike','Fat bike','Folding cycle','Kids cycle','Helments','Bags','
Cycle locks' ,'Water bottle');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> desc category;
ERROR 1146 (42S02): Table 'Orange_cycles.category' doesn't exist
mysql> desc Category;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| Name  | varchar(50) | NO   | UNI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc Category;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| Name  | varchar(50) | NO   | UNI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc Users;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| id         | int         | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(20) | NO   |     | NULL    |                |
| last_name  | varchar(20) | NO   |     | NULL    |                |
| email      | varchar(50) | NO   | UNI | NULL    |                |
| password   | char(50)    | NO   |     | NULL    |                |
| gender     | varchar(8)  | YES  |     | NULL    |                |
| ph_number  | bigint      | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
7 rows in set (0.00 sec)

mysql> select * from Category;
+----+---------------+
| id | Name          |
+----+---------------+
|  9 | Bags          |
|  3 | BMX bicyce    |
|  2 | City bike     |
| 10 | Cycle locks   |
|  5 | Fat bike      |
|  6 | Folding cycle |
|  8 | Helments      |
|  4 | Hybrid bike   |
|  7 | Kids cycle    |
|  1 | Mountain bike |
| 11 | Water bottle  |
+----+---------------+
11 rows in set (0.00 sec)

mysql> select * from Category;
+----+---------------+
| id | Name          |
+----+---------------+
|  9 | Bags          |
|  3 | BMX bicyce    |
|  2 | City bike     |
| 10 | Cycle locks   |
|  5 | Fat bike      |
|  6 | Folding cycle |
|  8 | Helments      |
|  4 | Hybrid bike   |
|  7 | Kids cycle    |
|  1 | Mountain bike |
| 11 | Water bottle  |
+----+---------------+
11 rows in set (0.00 sec)

mysql> select * from Category order by id;
+----+---------------+
| id | Name          |
+----+---------------+
|  1 | Mountain bike |
|  2 | City bike     |
|  3 | BMX bicyce    |
|  4 | Hybrid bike   |
|  5 | Fat bike      |
|  6 | Folding cycle |
|  7 | Kids cycle    |
|  8 | Helments      |
|  9 | Bags          |
| 10 | Cycle locks   |
| 11 | Water bottle  |
+----+---------------+
11 rows in set (0.00 sec)

mysql> select * from Category;
+----+---------------+
| id | Name          |
+----+---------------+
|  9 | Bags          |
|  3 | BMX bicyce    |
|  2 | City bike     |
| 10 | Cycle locks   |
|  5 | Fat bike      |
|  6 | Folding cycle |
|  8 | Helments      |
|  4 | Hybrid bike   |
|  7 | Kids cycle    |
|  1 | Mountain bike |
| 11 | Water bottle  |
+----+---------------+
11 rows in set (0.00 sec)

mysql> show tables;
+-------------------------+
| Tables_in_Orange_cycles |
+-------------------------+
| Category                |
| Users                   |
+-------------------------+
2 rows in set (0.00 sec)

mysql> select * from Users;
Empty set (0.00 sec)

mysql> select * from Category;
+----+---------------+
| id | Name          |
+----+---------------+
|  9 | Bags          |
|  3 | BMX bicyce    |
|  2 | City bike     |
| 10 | Cycle locks   |
|  5 | Fat bike      |
|  6 | Folding cycle |
|  8 | Helments      |
|  4 | Hybrid bike   |
|  7 | Kids cycle    |
|  1 | Mountain bike |
| 11 | Water bottle  |
+----+---------------+
11 rows in set (0.00 sec)

mysql> CREATE TABLE bikes( id int primary key auto_increment ,Name varchar(50),categoshow tables;;
^C
mysql> desc Category;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int         | NO   | PRI | NULL    | auto_increment |
| Name  | varchar(50) | NO   | UNI | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE bikes( id int primary key auto_increment ,Name varchar(50),category_id 
    -> 
    -> 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> CREATE TABLE bikes( id int primary key auto_increment ,Name varchar(50),category_id 
    -> int ,DATETIME DEFAULT CURRENT_DATETIME,FOREIGN KEY (category_id) REFERENCES Category(id) );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DEFAULT CURRENT_DATETIME,FOREIGN KEY (category_id) REFERENCES Category(id) )' at line 2
mysql> CREATE TABLE bikes( id int primary key auto_increment ,Name varchar(50),category_id  int ,DATETIME DEFAULT GETDATE(),FOREIGN KEY (category_id)
REFERENCES Category(id) );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DEFAULT GETDATE(),FOREIGN KEY (category_id) REFERENCES Category(id) )' at line 1
mysql> CREATE TABLE bikes( id int primary key auto_increment ,Name varchar(50)unique notnul,category_id  int,barcode varchar(50) unique not null,FOREIGN KEY (category_id) REFERENCES Category(id) );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'notnul,category_id  int,barcode varchar(50) unique not null,FOREIGN KEY (categor' at line 1
mysql> CREATE TABLE bikes( id int primary key auto_increment ,Name varchar(50)unique not null,category_id  int,barcode varchar(50) unique not null,FOREIGN KEY (category_id) REFERENCES Category(id) );
Query OK, 0 rows affected (0.04 sec)

mysql> inesrt into bikes values ('1','hero sprint','2','89765453281',
    -> ;
;
^C
mysql> inesrt into bikes values ('1','hero sprint','2','89765453281',
    -> 
    -> '
    '> ;
    '> ;
    '> ;
    '> ;;;
    '> '^[[1;5A^C^C^[[1;5A^C^[[A
       inesrt into bikes values ('1','hero sprint','2','89765453281',
^C
mysql> inesrt into bikes values ('1','hero sprint','2','89765453281');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inesrt into bikes values ('1','hero sprint','2','89765453281')' at line 1
mysql> inesrt into bikes(id,name,category_id,barcode), values ('1','hero sprint','2','89765453281');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inesrt into bikes(id,name,category_id,barcode), values ('1','hero sprint','2','8' at line 1
mysql> inesrt into bikes(id,name,category_id,barcode)values ('1','hero sprint','2','89765453281');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inesrt into bikes(id,name,category_id,barcode)values ('1','hero sprint','2','897' at line 1
mysql> inesrt into bikes(id,name,category_id,barcode),values ('1','hero sprint','2','89765453281');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inesrt into bikes(id,name,category_id,barcode),values ('1','hero sprint','2','89' at line 1
mysql> inesrt into bikes(id,Name,category_id,barcode),values ('1','hero sprint','2','89765453281');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inesrt into bikes(id,Name,category_id,barcode),values ('1','hero sprint','2','89' at line 1
mysql> inesrt into bikes(id,Name,category_id,barcode)values ('1','hero sprint','2','89765453281');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inesrt into bikes(id,Name,category_id,barcode)values ('1','hero sprint','2','897' at line 1
mysql> inesrt into bikes (id,Name,category_id,barcode) values ('1','hero sprint','2','89765453281');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inesrt into bikes (id,Name,category_id,barcode) values ('1','hero sprint','2','8' at line 1
mysql> inesrt into bikes (id,Name,category_id,barcode) values ('1','hero sprint','2','89765453281')
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inesrt into bikes (id,Name,category_id,barcode) values ('1','hero sprint','2','8' at line 1
mysql> insert into bikes (id,Name,category_id,barcode) values ('1','hero sprint','2','89765453281')
    -> ;
Query OK, 1 row affected (0.02 sec)

mysql> select * from bikes;
+----+-------------+-------------+-------------+
| id | Name        | category_id | barcode     |
+----+-------------+-------------+-------------+
|  1 | hero sprint |           2 | 89765453281 |
+----+-------------+-------------+-------------+
1 row in set (0.00 sec)

mysql> select * from Category;
+----+---------------+
| id | Name          |
+----+---------------+
|  9 | Bags          |
|  3 | BMX bicyce    |
|  2 | City bike     |
| 10 | Cycle locks   |
|  5 | Fat bike      |
|  6 | Folding cycle |
|  8 | Helments      |
|  4 | Hybrid bike   |
|  7 | Kids cycle    |
|  1 | Mountain bike |
| 11 | Water bottle  |
+----+---------------+
11 rows in set (0.01 sec)

mysql> select * from Category order by id;
+----+---------------+
| id | Name          |
+----+---------------+
|  1 | Mountain bike |
|  2 | City bike     |
|  3 | BMX bicyce    |
|  4 | Hybrid bike   |
|  5 | Fat bike      |
|  6 | Folding cycle |
|  7 | Kids cycle    |
|  8 | Helments      |
|  9 | Bags          |
| 10 | Cycle locks   |
| 11 | Water bottle  |
+----+---------------+
11 rows in set (0.00 sec)

mysql>   3 | BMX bicyce    |
    -> |  2 | City bike     |
    -> | 10 | Cycle locks   |
    -> |  5 | Fat bike      |
    -> |  6 | Folding cycle |
    -> |  8 | Helments      |
    -> |  4 | Hybrid bike   |
    -> |  7 | Kids cycle    |
    -> |  1 | Mountain bike |
    -> | 11 | Water bottle  |
    -> +---  3 | BMX bicyce    |
    -> |  2 | City bike     |
    -> | 10 | Cycle locks   |
    -> |  5 | Fat bike      |
    -> |  6 | Folding cycle |
    -> |  8 | Helments      |
    -> |  4 | Hybrid bike   |
    -> |  7 | Kids cycle    |
    -> |  1 | Mountain bike |
    -> | 11 | Water bottle  |
    -> +---
    -> 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3 | BMX bicyce    |
|  2 | City bike     |
| 10 | Cycle locks   |
|  5 | Fat bik' at line 1
mysql> select * from Category;
+----+---------------+
| id | Name          |
+----+---------------+
|  9 | Bags          |
|  3 | BMX bicyce    |
|  2 | City bike     |
| 10 | Cycle locks   |
|  5 | Fat bike      |
|  6 | Folding cycle |
|  8 | Helments      |
|  4 | Hybrid bike   |
|  7 | Kids cycle    |
|  1 | Mountain bike |
| 11 | Water bottle  |
+----+---------------+
11 rows in set (0.00 sec)

mysql> select * from Category order by id;
+----+---------------+
| id | Name          |
+----+---------------+
|  1 | Mountain bike |
|  2 | City bike     |
|  3 | BMX bicyce    |
|  4 | Hybrid bike   |
|  5 | Fat bike      |
|  6 | Folding cycle |
|  7 | Kids cycle    |
|  8 | Helments      |
|  9 | Bags          |
| 10 | Cycle locks   |
| 11 | Water bottle  |
+----+---------------+
11 rows in set (0.00 sec)

mysql> select * from users;
ERROR 1146 (42S02): Table 'Orange_cycles.users' doesn't exist
mysql> select * from Users;
Empty set (0.00 sec)

mysql> desc Users;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| id         | int         | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(20) | NO   |     | NULL    |                |
| last_name  | varchar(20) | NO   |     | NULL    |                |
| email      | varchar(50) | NO   | UNI | NULL    |                |
| password   | char(50)    | NO   |     | NULL    |                |
| ph_number  | bigint      | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql> insert into Users ('1','ace','avles','ace@mail.com','ace12345','9790938712');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''1','ace','avles','ace@mail.com','ace12345','9790938712')' at line 1
mysql> insert into Users values ('1','ace','avles','ace@mail.com','ace12345','9790938712');
Query OK, 1 row affected (0.02 sec)

mysql> select * from Users;
+----+------------+-----------+--------------+----------+------------+
| id | first_name | last_name | email        | password | ph_number  |
+----+------------+-----------+--------------+----------+------------+
|  1 | ace        | avles     | ace@mail.com | ace12345 | 9790938712 |
+----+------------+-----------+--------------+----------+------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE bike_price ( id int primary key auto_increment,bike_id int, price id int ,FOREIGN KEY (bike_id) REFERENCES bikes(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'id int ,FOREIGN KEY (bike_id) REFERENCES bikes(id)' at line 1
mysql> CREATE TABLE bike_price ( id int primary key auto_increment,bike_id int, price id int ,FOREIGN KEY (bike_id) REFERENCES bikes(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'id int ,FOREIGN KEY (bike_id) REFERENCES bikes(id))' at line 1
mysql> CREATE TABLE bike_price ( id int primary key auto_increment,bike_id int, price int ,FOREIGN KEY (bike_id) REFERENCES bikes(id));
Query OK, 0 rows affected (0.06 sec)

mysql> insert into Users values ('01','admin','admin','admin@mail.com','admin','9176701308');
ERROR 1062 (23000): Duplicate entry '1' for key 'Users.PRIMARY'
mysql> delete from Users where id = 1;
Query OK, 1 row affected (0.02 sec)

mysql> insert into Users values ('01','admin','admin','admin@mail.com','admin','9176701308');
Query OK, 1 row affected (0.02 sec)

mysql> create table roles(id int primary key auto_increment,User_id int ,role varchar(20) unique);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into roles values ('1';'1';'admin');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''1'' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''admin')' at line 1
mysql> insert into roles values ('1';'1';'admin');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''1'' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''admin')' at line 1
mysql> insert into roles(id,User_id,role) values ('1';'1';'admin');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''1'' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''admin')' at line 1
mysql> insert into roles (id,User_id,role) values ('1';'1';'admin');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''1'' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''admin')' at line 1
mysql> insert into roles (id,User_id,role) values ('1','1','admin');
Query OK, 1 row affected (0.02 sec)

mysql> drop table roles;
Query OK, 0 rows affected (0.04 sec)

mysql> create table roles(id int primary key auto_increment,User_id int ,role varchar(20) unique,FOREIGN KEY (User_id) REFERENCES Users(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table roles(id int primary key auto_increment,User_id int ,role varchar(20) unique,FOREIGN KEY (User_id) REFERENCES Users(id));
Query OK, 0 rows affected (0.06 sec)

mysql> insert into roles (id,User_id,role) values ('1','1','admin');
Query OK, 1 row affected (0.02 sec)

mysql> create table products(id int primary key auto_increment,category_id int ,name varchar(20) unique,barcode varchar(20) unique not null,FOREIGN KEY (category_id) REFERENCES category(id));
ERROR 1824 (HY000): Failed to open the referenced table 'category'
mysql> create table products(id int primary key auto_increment,category_id int ,name varchar(20) unique,barcode varchar(20) unique not null,FOREIGN KEY (category_id) REFERENCES Category(id));
Query OK, 0 rows affected (0.06 sec)

mysql> CREATE TABLE products_price ( id int primary key auto_increment,products_id int, price int ,FOREIGN KEY (products_id) REFERENCES products(id));

Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE products_price ( id int primary key auto_increment,products_id int, price int ,FOREIGN KEY (products_id) REFERENCES products(id));ERROR 1050 (42S01): Table 'products_price' already exists
mysql> create table orders (id int primary key auto_increment ,bike_id int FOREIGN KEY (bike_id) REFERENCES bikes(id),quantity int not null DEFAULT = '1', price int FOREIGN KEY (price) REFERENCES bikes_price(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (bike_id) REFERENCES bikes(id),quantity int not null DEFAULT = '1', ' at line 1
mysql> create table orders (id int primary key auto_increment ,bike_id int FOREIGN KEY (bike_id) REFERENCES bikes(id),quantity int not null DEFAULT '1', price int FOREIGN KEY (price) REFERENCES bikes_price(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (bike_id) REFERENCES bikes(id),quantity int not null DEFAULT '1', pr' at line 1
mysql> create table orders (id int primary key auto_increment ,bike_id int, FOREIGN KEY (bike_id) REFERENCES bikes(id),quantity int not null DEFAULT '1', price int, FOREIGN KEY (price) REFERENCES bikes_price(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table orders (id int primary key auto_increment ,bike_id int, FOREIGN KEY (bike_id) REFERENCES bikes(id),quantity int not null DEFAULT '1', price int FOREIGN KEY (price) REFERENCES bikes_price(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (price) REFERENCES bikes_price(id)' at line 1
mysql> create table orders (id int primary key auto_increment ,quantity int not null DEFAULT '1', price int FOREIGN KEY (price) REFERENCES bikes_price(id),bike_id intFOREIGN KEY (bike_id) REFERENCES bikes(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (price) REFERENCES bikes_price(id),bike_id intFOREIGN KEY (bike_id) ' at line 1
mysql> create table orders (id int primary key auto_increment,quantity int not null DEFAULT '1', price int FOREIGN KEY (price) REFERENCES bikes_price(id),bike_id intFOREIGN KEY (bike_id) REFERENCES bikes(id)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (price) REFERENCES bikes_price(id),bike_id intFOREIGN KEY (bike_id) ' at line 1
mysql> create table orders (id int primary key auto_increment,
    -> quantity int not null DEFAULT '1',
    -> price int FOREIGN KEY (price) REFERENCES bikes_price(id),
    -> bike_id intFOREIGN KEY (bike_id) REFERENCES bikes(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (price) REFERENCES bikes_price(id),
bike_id intFOREIGN KEY (bike_id)' at line 3
mysql> create table orders (id int primary key auto_increment,
    -> quantity int not null DEFAULT '1',
    -> price int FOREIGN KEY REFERENCES bikes_price(id),
    -> bike_id int FOREIGN KEY REFERENCES bikes(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY REFERENCES bikes_price(id),
bike_id int FOREIGN KEY REFERENCES bikes' at line 3
mysql> create table orders (id int primary key auto_increment, quantity int not null DEFAULT '1', price int FOREIGN KEY REFERENCES bikes_price(id), bike_id int FOREIGN KEY REFERENCES bikes(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY REFERENCES bikes_price(id), bike_id int FOREIGN KEY REFERENCES bikes' at line 1
mysql> create table orders (id int primary key auto_increment,
    -> quantity int not null DEFAULT '1',
    -> price int, FOREIGN KEY (price) REFERENCES bikes_price(id),
    -> bike_id int, FOREIGN KEY (bike_id) REFERENCES bikes(id));
ERROR 1824 (HY000): Failed to open the referenced table 'bikes_price'
mysql> create table orders (id int primary key auto_increment, quantity int not null DEFAULT '1', price int, FOREIGN KEY (price) REFERENCES bike_price(id), bike_id int, FOREIGN KEY (bike_id) REFERENCES bikes(id));
Query OK, 0 rows affected (0.05 sec)

mysql> alter table orders
    -> add column user_id int after id;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders 
    -> add foreign key(user_id) references Users(id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table products rename accessories;
Query OK, 0 rows affected (0.05 sec)

mysql> alter table products_price rename accessories_price;
Query OK, 0 rows affected (0.04 sec)

mysql> alter table orders drop column bike_id;
ERROR 1828 (HY000): Cannot drop column 'bike_id': needed in a foreign key constraint 'orders_ibfk_2'
mysql> alter table orders drop constraints FK_bike_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FK_bike_id' at line 1
mysql> alter table orders drop foreign key FK_bike_id;
ERROR 1091 (42000): Can't DROP 'FK_bike_id'; check that column/key exists
mysql> alter table orders drop foreign key bike_id;
ERROR 1091 (42000): Can't DROP 'bike_id'; check that column/key exists
mysql> desc orders;
+----------+------+------+-----+---------+----------------+
| Field    | Type | Null | Key | Default | Extra          |
+----------+------+------+-----+---------+----------------+
| id       | int  | NO   | PRI | NULL    | auto_increment |
| user_id  | int  | YES  | MUL | NULL    |                |
| quantity | int  | NO   |     | 1       |                |
| price    | int  | YES  | MUL | NULL    |                |
| bike_id  | int  | YES  | MUL | NULL    |                |
+----------+------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> alter table orders drop foreign key FK_bike_id;
ERROR 1091 (42000): Can't DROP 'FK_bike_id'; check that column/key exists
mysql> alter table orders drop COLUMN bike_id;
ERROR 1828 (HY000): Cannot drop column 'bike_id': needed in a foreign key constraint 'orders_ibfk_2'
mysql> alter table orders drop foreign key orders_ibfk_2;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders drop COLUMN bike_id;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders drop COLUMN price;
ERROR 1828 (HY000): Cannot drop column 'price': needed in a foreign key constraint 'orders_ibfk_1'
mysql> alter table orders drop foreign key orders_ibfk_1;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders drop COLUMN price;
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select*from orders;
Empty set (0.00 sec)

mysql> desc orders;
+----------+------+------+-----+---------+----------------+
| Field    | Type | Null | Key | Default | Extra          |
+----------+------+------+-----+---------+----------------+
| id       | int  | NO   | PRI | NULL    | auto_increment |
| user_id  | int  | YES  | MUL | NULL    |                |
| quantity | int  | NO   |     | 1       |                |
+----------+------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> create table products (id int auto_increment primarykey ,name varchar
 (50) not null,barcode varchar(50) notnull unique)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primarykey ,name varchar (50) not null,barcode varchar(50) notnull unique)' at line 1
mysql> create table products (id int auto_increment primarykey ,name varchar (50) not null,barcode varchar(50) notnull unique);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primarykey ,name varchar (50) not null,barcode varchar(50) notnull unique)' at line 1
mysql> create table products (id int primary key auto_increment,name varchar
 (50) not null,barcode varchar(50) notnull unique);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'notnull unique)' at line 1
mysql> create table products (id int primary key auto_increment,name varchar (50) not null,barcode varchar(50)unique not null);
Query OK, 0 rows affected (0.05 sec)

mysql> create table products_price(id int primary key auto_increment,product_id int,price int notnull,date date default getdate(),foreign key (product_id) references products(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'notnull,date date default getdate(),foreign key (product_id) references products' at line 1
mysql> create table products_price(id int primary key auto_increment,product_id int,price int not null,date date default getdate(),foreign key (product_id) references products(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'getdate(),foreign key (product_id) references products(id))' at line 1
mysql> create table products_price(id int primary key auto_increment,product_id int,price int not null,order_date date default getdate(),foreign key (product_id) references products(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'getdate(),foreign key (product_id) references products(id))' at line 1
mysql> create table products_price(id int primary key auto_increment,product_id int,price int not null,date date default getnow(),foreign key (product_i
d) references products(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'getnow(),foreign key (product_id) references products(id))' at line 1
mysql> create table products_price(id int primary key auto_increment,product_id int,price int not null,date date default now(),foreign key (product_id)
references products(id));
ERROR 1067 (42000): Invalid default value for 'date'
mysql> create table products_price(id int primary key auto_increment,product_id int,price int not null,foreign key (product_id) references products(id));
Query OK, 0 rows affected (0.06 sec)

mysql> alter table orders add column product_id int foreign key references products(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'foreign key references products(id)' at line 1
mysql> alter table orders add column product_id int add foreign key referenc
es products(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add foreign key references products(id)' at line 1
mysql> alter table orders add column product_id int;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders add foreign key(products_id) references products(i
d);
ERROR 1072 (42000): Key column 'products_id' doesn't exist in table
mysql> alter table orders add foreign key(product_id) references products(id);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table drop foreign key fk_product_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'drop foreign key fk_product_id' at line 1
mysql> alter table drop foreign key product_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'drop foreign key product_id' at line 1
mysql> alter table orders drop foreign key product_id;
ERROR 1091 (42000): Can't DROP 'product_id'; check that column/key exists
mysql> ^C

^C
mysql> alter table orders drop column product_id;
ERROR 1828 (HY000): Cannot drop column 'product_id': needed in a foreign key constraint 'orders_ibfk_4'
mysql> alter table orders drop foreign key orders;
ERROR 1091 (42000): Can't DROP 'orders'; check that column/key exists
mysql> alter table orders drop foreign key orders_ibfk_4;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders drop column product_id;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc
    -> orders;
+----------+------+------+-----+---------+----------------+
| Field    | Type | Null | Key | Default | Extra          |
+----------+------+------+-----+---------+----------------+
| id       | int  | NO   | PRI | NULL    | auto_increment |
| user_id  | int  | YES  | MUL | NULL    |                |
| quantity | int  | NO   |     | 1       |                |
+----------+------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> alter table orders add column product_id int after id;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders add foreign key(product_id) references products(id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc orders;
+------------+------+------+-----+---------+----------------+
| Field      | Type | Null | Key | Default | Extra          |
+------------+------+------+-----+---------+----------------+
| id         | int  | NO   | PRI | NULL    | auto_increment |
| product_id | int  | YES  | MUL | NULL    |                |
| user_id    | int  | YES  | MUL | NULL    |                |
| quantity   | int  | NO   |     | 1       |                |
+------------+------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

mysql> alter table orders drop foreign key orders_ibfk_4;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders drop column product_id;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders add column product_id int after user_id;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders add foreign key(product_id) references products(id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc orders;
+------------+------+------+-----+---------+----------------+
| Field      | Type | Null | Key | Default | Extra          |
+------------+------+------+-----+---------+----------------+
| id         | int  | NO   | PRI | NULL    | auto_increment |
| user_id    | int  | YES  | MUL | NULL    |                |
| product_id | int  | YES  | MUL | NULL    |                |
| quantity   | int  | NO   |     | 1       |                |
+------------+------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> alter table orders add column price_id int after product_id;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders add foreign key(price_id) references products_price(id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table bikes add column product_id int after bike_id;
ERROR 1054 (42S22): Unknown column 'bike_id' in 'bikes'
mysql> alter table bike add column product_id int after bike_id;
ERROR 1146 (42S02): Table 'Orange_cycles.bike' doesn't exist
mysql> alter table bikes add column product_id int after id;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders add foreign key(product_id) references products(id);
Query OK, 0 rows affected (0.14 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table accessories add column product_id int after id;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table accessories add foreign key(product_id) references products(id);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> 


```