/* UC1 */
mysql> CREATE DATABASE addressbook_service;
Query OK, 1 row affected (0.03 sec)

/* UC2 */
mysql> CREATE TABLE address_book
    -> (
    -> first_name varchar(150),
    -> last_name varchar(150),
    -> address varchar(150),
    -> city varchar(50),
    -> state varchar(50),
    -> zip varchar(6),
    -> phone_number varchar(10),
    -> email varchar(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

/* UC3 */
mysql> INSERT INTO address_book VALUES('Mehul', 'Bhange', 'pune','pune','maharashtra','123456','9090909090','mehul@gmail.com');
Query OK, 1 row affected (0.01 sec)

/* UC4 */
mysql> UPDATE address_book set address = 'mumbai', city = 'mumbai' WHERE first_name = 'Mehul';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0
+------------+-----------+---------+--------+-------------+--------+--------------+-----------------+
| first_name | last_name | address | city   | state       | zip    | phone_number | email           |
+------------+-----------+---------+--------+-------------+--------+--------------+-----------------+
| Mehul      | Bhange    | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | mehul@gmail.com |
+------------+-----------+---------+--------+-------------+--------+--------------+-----------------+

/* UC5 */
/* Table before deleting data */
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+
| first_name | last_name | address | city   | state       | zip    | phone_number | email            |
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+
| Mehul      | Bhange    | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | mehul@gmail.com  |
| Hitesh     | Meher     | pune    | pune   | maharashtra | 123456 | 9090909090   | hitesh@gmail.com |
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+

mysql> DELETE FROM address_book WHERE first_name = 'Hitesh';
Query OK, 1 row affected (0.01 sec)

/* Table after deleting data */
+------------+-----------+---------+--------+-------------+--------+--------------+-----------------+
| first_name | last_name | address | city   | state       | zip    | phone_number | email           |
+------------+-----------+---------+--------+-------------+--------+--------------+-----------------+
| Mehul      | Bhange    | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | mehul@gmail.com |
+------------+-----------+---------+--------+-------------+--------+--------------+-----------------+

/* UC6 */
mysql> SELECT * FROM address_book WHERE city = 'mumbai' or state = 'gujarat';
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+
| first_name | last_name | address | city   | state       | zip    | phone_number | email            |
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+
| Mehul      | Bhange    | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | mehul@gmail.com  |
| Hitesh     | Meher     | surat   | surat  | gujarat     | 123456 | 9090909090   | hitesh@gmail.com |
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+
2 rows in set (0.00 sec)

/* UC7 */
mysql> SELECT COUNT(*) FROM address_book WHERE city = 'mumbai' or state = 'gujarat';
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
1 row in set (0.00 sec)

/* UC8 */
mysql> SELECT * FROM address_book WHERE city = 'mumbai' ORDER BY first_name;
+------------+-----------+---------+--------+-------------+--------+--------------+-----------------+
| first_name | last_name | address | city   | state       | zip    | phone_number | email           |
+------------+-----------+---------+--------+-------------+--------+--------------+-----------------+
| abc        | xyz       | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | abc@gmail.com   |
| Mehul      | Bhange    | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | mehul@gmail.com |
| pqr        | xyz       | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | pqr@gmail.com   |
+------------+-----------+---------+--------+-------------+--------+--------------+-----------------+
3 rows in set (0.01 sec)

/* UC9 */
mysql> ALTER TABLE address_book ADD COLUMN type varchar(50), ADD addressbook_name varchar(50);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc address_book;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| first_name       | varchar(150) | YES  |     | NULL    |       |
| last_name        | varchar(150) | YES  |     | NULL    |       |
| address          | varchar(150) | YES  |     | NULL    |       |
| city             | varchar(50)  | YES  |     | NULL    |       |
| state            | varchar(50)  | YES  |     | NULL    |       |
| zip              | varchar(6)   | YES  |     | NULL    |       |
| phone_number     | varchar(10)  | YES  |     | NULL    |       |
| email            | varchar(50)  | YES  |     | NULL    |       |
| type             | varchar(50)  | YES  |     | NULL    |       |
| addressbook_name | varchar(50)  | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

/* UC10 */
mysql> select * from address_book;
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+---------+------------------+
| first_name | last_name | address | city   | state       | zip    | phone_number | email            | type    | addressbook_name |
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+---------+------------------+
| Mehul      | Bhange    | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | mehul@gmail.com  | family  | book1            |
| Hitesh     | Meher     | surat   | surat  | gujarat     | 123456 | 9090909090   | hitesh@gmail.com | family  | book2            |
| abc        | xyz       | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | abc@gmail.com    | friends | book1            |
| pqr        | xyz       | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | pqr@gmail.com    | friends | book2            |
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+---------+------------------+
4 rows in set (0.00 sec)

mysql> SELECT COUNT(*) FROM address_book WHERE type = 'family';
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) FROM address_book WHERE type = 'friends';
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
1 row in set (0.00 sec)

/* UC11 */
mysql> INSERT INTO address_book VALUES('qwe','xyz','pune','pune','maharashtra','123456','9090909090','qwe@gmail.com','friends','book1');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO address_book VALUES('qwe','xyz','pune','pune','maharashtra','123456','9090909090','qwe@gmail.com','family','book1');
Query OK, 1 row affected (0.01 sec)

mysql> select * from address_book;
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+---------+------------------+
| first_name | last_name | address | city   | state       | zip    | phone_number | email            | type    | addressbook_name |
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+---------+------------------+
| Mehul      | Bhange    | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | mehul@gmail.com  | family  | book1            |
| Hitesh     | Meher     | surat   | surat  | gujarat     | 123456 | 9090909090   | hitesh@gmail.com | family  | book2            |
| abc        | xyz       | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | abc@gmail.com    | friends | book1            |
| pqr        | xyz       | mumbai  | mumbai | maharashtra | 123456 | 9090909090   | pqr@gmail.com    | friends | book2            |
| qwe        | xyz       | pune    | pune   | maharashtra | 123456 | 9090909090   | qwe@gmail.com    | friends | book1            |
| qwe        | xyz       | pune    | pune   | maharashtra | 123456 | 9090909090   | qwe@gmail.com    | family  | book1            |
+------------+-----------+---------+--------+-------------+--------+--------------+------------------+---------+------------------+
6 rows in set (0.00 sec)