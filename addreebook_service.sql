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
