postgres=# create database sample
postgres-# ;
CREATE DATABASE
postgres=# create table customer(first_name varchar(100),last_name varchar(100));
CREATE TABLE
postgres=# select * from customer;
 first_name | last_name
------------+-----------
(0 rows)


postgres=# insrt into customer values(adithya,ev),(dhaya,er),(adithya,k),(sneha,mohan),(arya,ek),(kishore,m),(mohanan,v),(prasanna,s);
ERROR:  syntax error at or near "insrt"
LINE 1: insrt into customer values(adithya,ev),(dhaya,er),(adithya,k...
        ^
postgres=# insert into customer values(adithya,ev),(dhaya,er),(adithya,k),(sneha,mohan),(arya,ek),(kishore,m),(mohanan,v),(prasanna,s);
ERROR:  column "adithya" does not exist
LINE 1: insert into customer values(adithya,ev),(dhaya,er),(adithya,...
                                    ^
postgres=# insert into customer values('adithya','ev'),('dhaya','er'),('adithya','k'),('sneha','mohan'),('arya','ek'),('kishore','m'),('mohanan','v'),('prasanna','s');
INSERT 0 8
postgres=# select * from customer;
 first_name | last_name
------------+-----------
 adithya    | ev
 dhaya      | er
 adithya    | k
 sneha      | mohan
 arya       | ek
 kishore    | m
 mohanan    | v
 prasanna   | s
(8 rows)


postgres=# select * from customer order by first_name;
 first_name | last_name
------------+-----------
 adithya    | k
 adithya    | ev
 arya       | ek
 dhaya      | er
 kishore    | m
 mohanan    | v
 prasanna   | s
 sneha      | mohan
(8 rows)


postgres=# select * from customer order by first_name asc;
 first_name | last_name
------------+-----------
 adithya    | k
 adithya    | ev
 arya       | ek
 dhaya      | er
 kishore    | m
 mohanan    | v
 prasanna   | s
 sneha      | mohan
(8 rows)


postgres=# select * from customer order by first_name dec;
ERROR:  syntax error at or near "dec"
LINE 1: select * from customer order by first_name dec;
                                                   ^
postgres=# select * from customer order by first_name desc;
 first_name | last_name
------------+-----------
 sneha      | mohan
 prasanna   | s
 mohanan    | v
 kishore    | m
 dhaya      | er
 arya       | ek
 adithya    | ev
 adithya    | k
(8 rows)


postgres=# alter table customer add salary float;
ALTER TABLE
postgres=# select * from customer;
 first_name | last_name | salary
------------+-----------+--------
 adithya    | ev        |
 dhaya      | er        |
 adithya    | k         |
 sneha      | mohan     |
 arya       | ek        |
 kishore    | m         |
 mohanan    | v         |
 prasanna   | s         |
(8 rows)


postgres=# update customer set salary=2000.9 where last_name='ev';
UPDATE 1
postgres=# update customer set salary=3000.34 where last_name='er';
UPDATE 1
postgres=# update customer set salary=1456.55 where last_name='k';
UPDATE 1
postgres=# update customer set salary=5098.23 where last_name='mohan';
UPDATE 1
postgres=# update customer set salary=4876.99 where last_name='ek';
UPDATE 1
postgres=# update customer set salary=4444.55 where last_name='m';
UPDATE 1
postgres=# update customer set salary=7864.66 where last_name='v';
UPDATE 1
postgres=# update customer set salary=4356.0 where last_name='s';
UPDATE 1
postgres=# select * from customer;
 first_name | last_name | salary
------------+-----------+---------
 adithya    | ev        |  2000.9
 dhaya      | er        | 3000.34
 adithya    | k         | 1456.55
 sneha      | mohan     | 5098.23
 arya       | ek        | 4876.99
 kishore    | m         | 4444.55
 mohanan    | v         | 7864.66
 prasanna   | s         |    4356
(8 rows)


postgres=# select * from customer order by salary;
 first_name | last_name | salary
------------+-----------+---------
 adithya    | k         | 1456.55
 adithya    | ev        |  2000.9
 dhaya      | er        | 3000.34
 prasanna   | s         |    4356
 kishore    | m         | 4444.55
 arya       | ek        | 4876.99
 sneha      | mohan     | 5098.23
 mohanan    | v         | 7864.66
(8 rows)


postgres=# select * from customer order by salary desc;
 first_name | last_name | salary
------------+-----------+---------
 mohanan    | v         | 7864.66
 sneha      | mohan     | 5098.23
 arya       | ek        | 4876.99
 kishore    | m         | 4444.55
 prasanna   | s         |    4356
 dhaya      | er        | 3000.34
 adithya    | ev        |  2000.9
 adithya    | k         | 1456.55
(8 rows)


postgres=# select first_name, count(*) as employee_count from customer group by first_name;
 first_name | employee_count
------------+----------------
 adithya    |              2
 sneha      |              1
 mohanan    |              1
 arya       |              1
 prasanna   |              1
 dhaya      |              1
 kishore    |              1
(7 rows)


postgres=# select last_name, avg(salary) as total_salary from customer group by last_name;
 last_name | total_salary
-----------+--------------
 ev        |       2000.9
 v         |      7864.66
 k         |      1456.55
 er        |      3000.34
 ek        |      4876.99
 mohan     |      5098.23
 s         |         4356
 m         |      4444.55
(8 rows)


postgres=# select first_name, sum(salary) as total_salary from customer group by first_name;
 first_name | total_salary
------------+--------------
 adithya    |      3457.45
 sneha      |      5098.23
 mohanan    |      7864.66
 arya       |      4876.99
 prasanna   |         4356
 dhaya      |      3000.34
 kishore    |      4444.55
(7 rows)

