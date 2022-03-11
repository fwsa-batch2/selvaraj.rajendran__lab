# excercises
```
mysql> select courses.id,courses.courses_name,batches.id,batches.batch_name,user.id,user.user_name from courses inner join batches on courses.id = batches.id jo
in user on user.id = batches.id;
+----+--------------+----+------------+----+-----------+
| id | courses_name | id | batch_name | id | user_name |
+----+--------------+----+------------+----+-----------+
|  1 | html         |  1 | batch-1    |  1 | surya     |
|  2 | css          |  2 | batch-1    |  2 | selva     |
+----+--------------+----+------------+----+-----------+
2 rows in set (0.00 sec)

```
```
mysql> select user.id,user.user_name,courses.courses_name from courses inner join batches on courses.id = batches.id join user on user.id = batches.id where user.id = '1';s_name from course                                                  in user on user.id =
+----+-----------+--------------+
| id | user_name | courses_name |
+----+-----------+--------------+
|  1 | surya     | html         |
+----+-----------+--------------+

```