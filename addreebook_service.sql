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