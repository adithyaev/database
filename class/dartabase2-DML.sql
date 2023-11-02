select * from category;

insert into category(category_name,description) values('grocery','food and grains,spices,packet foods');

 billing=# insert into category(category_name,description) values('stationary','books,pencil');
INSERT 0 1
billing=# select * from category;
 pk_category_id | category_name |             description
----------------+---------------+-------------------------------------
              1 | grocery       | food and grains,spices,packet foods
              2 | stationary    | books,pencil
(2 rows)

billing=# insert into items values(1,'classmate note', 2, '200pages,40x40cm,lined notebook', 45,'2020-06-09');
INSERT 0 1
billing=# select * from items;
 pk_product_id |  product_name  | fk_category_id |           description           | cost | added_date | product_brand
---------------+----------------+----------------+---------------------------------+------+------------+---------------
             1 | classmate note |              2 | 200pages,40x40cm,lined notebook |   45 | 2020-06-09 |
(1 row)
insert into items values(2,'pulses', 1, 'food items', 100,'2020-06-09');
billing=# insert into items values(3,'pen',2,'black ink',23,'2020-12-22','lex');
INSERT 0 1
billing=# insert into items values(4,'pencil',2,'black ',10,'2023-11-22','hb');
INSERT 0 1
billing=# insert into items values(5,'eracer',2,'white colour',15,'2023-08-29','hb');
INSERT 0 1
billing=# select * from items;
 pk_product_id |  product_name  | fk_category_id |           description           | cost | added_date | product_brand
---------------+----------------+----------------+---------------------------------+------+------------+---------------
             1 | classmate note |              2 | 200pages,40x40cm,lined notebook |   45 | 2020-06-09 |
             2 | pen            |              2 | blur ink                        |   45 | 2020-08-19 | inkpoint
             3 | pen            |              2 | black ink                       |   23 | 2020-12-22 | lex
             4 | pencil         |              2 | black                           |   10 | 2023-11-22 | hb
             5 | eracer         |              2 | white colour                    |   15 | 2023-08-29 | hb
(5 rows)


billing=# insert into items values(6,'rice', 1, 'matta', 1000,'2023-08-08','pavizham');
INSERT 0 1
billing=# select * from items;
 pk_product_id |  product_name  | fk_category_id |           description           | cost | added_date | product_brand
---------------+----------------+----------------+---------------------------------+------+------------+---------------
             1 | classmate note |              2 | 200pages,40x40cm,lined notebook |   45 | 2020-06-09 |
             2 | pen            |              2 | blur ink                        |   45 | 2020-08-19 | inkpoint
             3 | pen            |              2 | black ink                       |   23 | 2020-12-22 | lex
             4 | pencil         |              2 | black                           |   10 | 2023-11-22 | hb
             5 | eracer         |              2 | white colour                    |   15 | 2023-08-29 | hb
             6 | rice           |              1 | matta                           | 1000 | 2023-08-08 | pavizham
(6 rows)



 insert into employee values
 (1,'staff','adithya','ev','adithya@gmail.com','9334567891','female','2002-02-13'),
 (2,'staff','dhaya','er','dhaya@gmail.com','9212387678','female','2002-08-23'),
 (3,'clerk','samad','k','samad@gmail.com','9934567891','male','2002-07-22'),
 (4,'admin','adithya','k','adik@gmail.com','9834567891','female','2003-02-01'),
 (5,'clerk','bansha','t','bansha@gmail.com','9734567891','female','2002-01-13');
 billing=# select *from employee;
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         1 | staff | adithya    | ev        | adithya@gmail.com | 9334567891 | female | 2002-02-13
         2 | staff | dhaya      | er        | dhaya@gmail.com   | 9212387678 | female | 2002-08-23
         3 | clerk | samad      | k         | samad@gmail.com   | 9934567891 | male   | 2002-07-22
         4 | admin | adithya    | k         | adik@gmail.com    | 9834567891 | female | 2003-02-01
         5 | clerk | bansha     | t         | bansha@gmail.com  | 9734567891 | female | 2002-01-13
(5 rows)

billing=# select * from employee where gender='female';
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         1 | staff | adithya    | ev        | adithya@gmail.com | 9334567891 | female | 2002-02-13
         2 | staff | dhaya      | er        | dhaya@gmail.com   | 9212387678 | female | 2002-08-23
         4 | admin | adithya    | k         | adik@gmail.com    | 9834567891 | female | 2003-02-01
         5 | clerk | bansha     | t         | bansha@gmail.com  | 9734567891 | female | 2002-01-13
(4 rows)


billing=# select * from employee where gender='male';
 pk_emp_id | type  | first_name | last_name |      email      |   phone    | gender |    dob
-----------+-------+------------+-----------+-----------------+------------+--------+------------
         3 | clerk | samad      | k         | samad@gmail.com | 9934567891 | male   | 2002-07-22
(1 row)


billing=# select * from employee where type='staff';
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         1 | staff | adithya    | ev        | adithya@gmail.com | 9334567891 | female | 2002-02-13
         2 | staff | dhaya      | er        | dhaya@gmail.com   | 9212387678 | female | 2002-08-23
(2 rows)


billing=# select * from employee where type='clerk';
 pk_emp_id | type  | first_name | last_name |      email       |   phone    | gender |    dob
-----------+-------+------------+-----------+------------------+------------+--------+------------
         3 | clerk | samad      | k         | samad@gmail.com  | 9934567891 | male   | 2002-07-22
         5 | clerk | bansha     | t         | bansha@gmail.com | 9734567891 | female | 2002-01-13
(2 rows)

billing=# select * from items;
 pk_product_id |  product_name  | fk_category_id |           description           | cost | added_date | product_brand
---------------+----------------+----------------+---------------------------------+------+------------+---------------
             1 | classmate note |              2 | 200pages,40x40cm,lined notebook |   45 | 2020-06-09 |
             2 | pen            |              2 | blur ink                        |   45 | 2020-08-19 | inkpoint
             3 | pen            |              2 | black ink                       |   23 | 2020-12-22 | lex
             4 | pencil         |              2 | black                           |   10 | 2023-11-22 | hb
             5 | eracer         |              2 | white colour                    |   15 | 2023-08-29 | hb
             6 | rice           |              1 | matta                           | 1000 | 2023-08-08 | pavizham
(6 rows)


billing=# select * from items where product_name='pen';
 pk_product_id | product_name | fk_category_id | description | cost | added_date | product_brand
---------------+--------------+----------------+-------------+------+------------+---------------
             2 | pen          |              2 | blur ink    |   45 | 2020-08-19 | inkpoint
             3 | pen          |              2 | black ink   |   23 | 2020-12-22 | lex
(2 rows)


billing=# select * from items where fk_category_id=1;
 pk_product_id | product_name | fk_category_id | description | cost | added_date | product_brand
---------------+--------------+----------------+-------------+------+------------+---------------
             6 | rice         |              1 | matta       | 1000 | 2023-08-08 | pavizham
(1 row)


billing=# select * from items where cost>50;
 pk_product_id | product_name | fk_category_id | description | cost | added_date | product_brand
---------------+--------------+----------------+-------------+------+------------+---------------
             6 | rice         |              1 | matta       | 1000 | 2023-08-08 | pavizham
(1 row)


billing=# select * from items where cost between 5 and 40;
 pk_product_id | product_name | fk_category_id | description  | cost | added_date | product_brand
---------------+--------------+----------------+--------------+------+------------+---------------
             3 | pen          |              2 | black ink    |   23 | 2020-12-22 | lex
             4 | pencil       |              2 | black        |   10 | 2023-11-22 | hb
             5 | eracer       |              2 | white colour |   15 | 2023-08-29 | hb
(3 rows)


billing=# select * from items where added_date='2020-12-22';
 pk_product_id | product_name | fk_category_id | description | cost | added_date | product_brand
---------------+--------------+----------------+-------------+------+------------+---------------
             3 | pen          |              2 | black ink   |   23 | 2020-12-22 | lex
(1 row)


billing=# select * from products limit 3;
ERROR:  relation "products" does not exist
LINE 1: select * from products limit 3;
                      ^
billing=# select * from items limit 3;
 pk_product_id |  product_name  | fk_category_id |           description           | cost | added_date | product_brand
---------------+----------------+----------------+---------------------------------+------+------------+---------------
             1 | classmate note |              2 | 200pages,40x40cm,lined notebook |   45 | 2020-06-09 |
             2 | pen            |              2 | blur ink                        |   45 | 2020-08-19 | inkpoint
             3 | pen            |              2 | black ink                       |   23 | 2020-12-22 | lex
(3 rows)

billing=# select * from employee;
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         1 | staff | adithya    | ev        | adithya@gmail.com | 9334567891 | female | 2002-02-13
         2 | staff | dhaya      | er        | dhaya@gmail.com   | 9212387678 | female | 2002-08-23
         3 | clerk | samad      | k         | samad@gmail.com   | 9934567891 | male   | 2002-07-22
         4 | admin | adithya    | k         | adik@gmail.com    | 9834567891 | female | 2003-02-01
         5 | clerk | bansha     | t         | bansha@gmail.com  | 9734567891 | female | 2002-01-13
(5 rows)


billing=# select * from employee where first_name like 'A%';
 pk_emp_id | type | first_name | last_name | email | phone | gender | dob
-----------+------+------------+-----------+-------+-------+--------+-----
(0 rows)


billing=# select * from employee where first_name like 'a%';
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         1 | staff | adithya    | ev        | adithya@gmail.com | 9334567891 | female | 2002-02-13
         4 | admin | adithya    | k         | adik@gmail.com    | 9834567891 | female | 2003-02-01
(2 rows)


billing=# select * from employee where first_name like 'd%';
 pk_emp_id | type  | first_name | last_name |      email      |   phone    | gender |    dob
-----------+-------+------------+-----------+-----------------+------------+--------+------------
         2 | staff | dhaya      | er        | dhaya@gmail.com | 9212387678 | female | 2002-08-23
(1 row)


billing=# select * from employee where first_name like '_d%';
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         1 | staff | adithya    | ev        | adithya@gmail.com | 9334567891 | female | 2002-02-13
         4 | admin | adithya    | k         | adik@gmail.com    | 9834567891 | female | 2003-02-01
(2 rows)


billing=# select * from employee where first_name like '_a%';
 pk_emp_id | type  | first_name | last_name |      email       |   phone    | gender |    dob
-----------+-------+------------+-----------+------------------+------------+--------+------------
         3 | clerk | samad      | k         | samad@gmail.com  | 9934567891 | male   | 2002-07-22
         5 | clerk | bansha     | t         | bansha@gmail.com | 9734567891 | female | 2002-01-13
(2 rows)


billing=# select * from employee where first_name like '__a%';
 pk_emp_id | type  | first_name | last_name |      email      |   phone    | gender |    dob
-----------+-------+------------+-----------+-----------------+------------+--------+------------
         2 | staff | dhaya      | er        | dhaya@gmail.com | 9212387678 | female | 2002-08-23
(1 row)


billing=# select * from items;
 pk_product_id |  product_name  | fk_category_id |           description           | cost | added_date | product_brand
---------------+----------------+----------------+---------------------------------+------+------------+---------------
             1 | classmate note |              2 | 200pages,40x40cm,lined notebook |   45 | 2020-06-09 |
             2 | pen            |              2 | blur ink                        |   45 | 2020-08-19 | inkpoint
             3 | pen            |              2 | black ink                       |   23 | 2020-12-22 | lex
             4 | pencil         |              2 | black                           |   10 | 2023-11-22 | hb
             5 | eracer         |              2 | white colour                    |   15 | 2023-08-29 | hb
             6 | rice           |              1 | matta                           | 1000 | 2023-08-08 | pavizham
(6 rows)


billing=# select * from items where description='%ink%';
 pk_product_id | product_name | fk_category_id | description | cost | added_date | product_brand
---------------+--------------+----------------+-------------+------+------------+---------------
(0 rows)


billing=# select * from items where description like '%ink%';
 pk_product_id | product_name | fk_category_id | description | cost | added_date | product_brand
---------------+--------------+----------------+-------------+------+------------+---------------
             2 | pen          |              2 | blur ink    |   45 | 2020-08-19 | inkpoint
             3 | pen          |              2 | black ink   |   23 | 2020-12-22 | lex
(2 rows)


billing=# select * from employee where phone like '__3%';
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         1 | staff | adithya    | ev        | adithya@gmail.com | 9334567891 | female | 2002-02-13
         3 | clerk | samad      | k         | samad@gmail.com   | 9934567891 | male   | 2002-07-22
         4 | admin | adithya    | k         | adik@gmail.com    | 9834567891 | female | 2003-02-01
         5 | clerk | bansha     | t         | bansha@gmail.com  | 9734567891 | female | 2002-01-13
(4 rows)


billing=# select * from employee where phone like '__3_______';
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         1 | staff | adithya    | ev        | adithya@gmail.com | 9334567891 | female | 2002-02-13
         3 | clerk | samad      | k         | samad@gmail.com   | 9934567891 | male   | 2002-07-22
         4 | admin | adithya    | k         | adik@gmail.com    | 9834567891 | female | 2003-02-01
         5 | clerk | bansha     | t         | bansha@gmail.com  | 9734567891 | female | 2002-01-13
(4 rows)

billing=# select* from items;
 pk_product_id |  product_name  | fk_category_id |           description           | cost | added_date | product_brand
---------------+----------------+----------------+---------------------------------+------+------------+---------------
             1 | classmate note |              2 | 200pages,40x40cm,lined notebook |   45 | 2020-06-09 |
             2 | pen            |              2 | blur ink                        |   45 | 2020-08-19 | inkpoint
             3 | pen            |              2 | black ink                       |   23 | 2020-12-22 | lex
             4 | pencil         |              2 | black                           |   10 | 2023-11-22 | hb
             5 | eracer         |              2 | white colour                    |   15 | 2023-08-29 | hb
             6 | rice           |              1 | matta                           | 1000 | 2023-08-08 | pavizham
(6 rows)


billing=# update items set product_brand='classmates' where pk_product_id=1;
UPDATE 1
billing=# select* from items;
 pk_product_id |  product_name  | fk_category_id |           description           | cost | added_date | product_brand
---------------+----------------+----------------+---------------------------------+------+------------+---------------
             2 | pen            |              2 | blur ink                        |   45 | 2020-08-19 | inkpoint
             3 | pen            |              2 | black ink                       |   23 | 2020-12-22 | lex
             4 | pencil         |              2 | black                           |   10 | 2023-11-22 | hb
             5 | eracer         |              2 | white colour                    |   15 | 2023-08-29 | hb
             6 | rice           |              1 | matta                           | 1000 | 2023-08-08 | pavizham
             1 | classmate note |              2 | 200pages,40x40cm,lined notebook |   45 | 2020-06-09 | classmates
(6 rows)


billing=# update employee set first_name='Adithya' and last_name='E V' where pk_emp_id=1;
ERROR:  invalid input syntax for type boolean: "Adithya"
LINE 1: update employee set first_name='Adithya' and last_name='E V'...
                                       ^
billing=# update employee set first_name='Adithya'  where pk_emp_id=1;
UPDATE 1
billing=# update employee set first_name='Adithya' , last_name='E V' where pk_emp_id=1;
UPDATE 1
billing=# select * from employee;
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         2 | staff | dhaya      | er        | dhaya@gmail.com   | 9212387678 | female | 2002-08-23
         3 | clerk | samad      | k         | samad@gmail.com   | 9934567891 | male   | 2002-07-22
         4 | admin | adithya    | k         | adik@gmail.com    | 9834567891 | female | 2003-02-01
         5 | clerk | bansha     | t         | bansha@gmail.com  | 9734567891 | female | 2002-01-13
         1 | staff | Adithya    | E V       | adithya@gmail.com | 9334567891 | female | 2002-02-13
(5 rows)


billing=# update employee set first_name='Adithya'  where pk_emp_id=4;
UPDATE 1
billing=# select * from employee;
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         2 | staff | dhaya      | er        | dhaya@gmail.com   | 9212387678 | female | 2002-08-23
         3 | clerk | samad      | k         | samad@gmail.com   | 9934567891 | male   | 2002-07-22
         5 | clerk | bansha     | t         | bansha@gmail.com  | 9734567891 | female | 2002-01-13
         1 | staff | Adithya    | E V       | adithya@gmail.com | 9334567891 | female | 2002-02-13
         4 | admin | Adithya    | k         | adik@gmail.com    | 9834567891 | female | 2003-02-01
(5 rows)


billing=# update employee set phone='9874654780',dob='2000-11-22' where first_name='Adithya' and last_name='k';
UPDATE 1
billing=# select * from employee;
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         2 | staff | dhaya      | er        | dhaya@gmail.com   | 9212387678 | female | 2002-08-23
         3 | clerk | samad      | k         | samad@gmail.com   | 9934567891 | male   | 2002-07-22
         5 | clerk | bansha     | t         | bansha@gmail.com  | 9734567891 | female | 2002-01-13
         1 | staff | Adithya    | E V       | adithya@gmail.com | 9334567891 | female | 2002-02-13
         4 | admin | Adithya    | k         | adik@gmail.com    | 9874654780 | female | 2000-11-22
(5 rows)

billing=# delete from employee where pk_emp_id=3;
DELETE 1
billing=# select * from employee;
 pk_emp_id | type  | first_name | last_name |       email       |   phone    | gender |    dob
-----------+-------+------------+-----------+-------------------+------------+--------+------------
         2 | staff | dhaya      | er        | dhaya@gmail.com   | 9212387678 | female | 2002-08-23
         5 | clerk | bansha     | t         | bansha@gmail.com  | 9734567891 | female | 2002-01-13
         1 | staff | Adithya    | E V       | adithya@gmail.com | 9334567891 | female | 2002-02-13
         4 | admin | Adithya    | k         | adik@gmail.com    | 9874654780 | female | 2000-11-22
(4 rows)


billing=# select * from items;
 pk_product_id |  product_name  | fk_category_id |           description           | cost | added_date | product_brand
---------------+----------------+----------------+---------------------------------+------+------------+---------------
             2 | pen            |              2 | blur ink                        |   45 | 2020-08-19 | inkpoint
             3 | pen            |              2 | black ink                       |   23 | 2020-12-22 | lex
             4 | pencil         |              2 | black                           |   10 | 2023-11-22 | hb
             5 | eracer         |              2 | white colour                    |   15 | 2023-08-29 | hb
             6 | rice           |              1 | matta                           | 1000 | 2023-08-08 | pavizham
             1 | classmate note |              2 | 200pages,40x40cm,lined notebook |   45 | 2020-06-09 | classmates
(6 rows)


billing=# delete from items where fk_category_id=2;
DELETE 5
billing=# select * from items;
 pk_product_id | product_name | fk_category_id | description | cost | added_date | product_brand
---------------+--------------+----------------+-------------+------+------------+---------------
             6 | rice         |              1 | matta       | 1000 | 2023-08-08 | pavizham
(1 row)




create table classes(
    pk_class_id serial primary key,
    class_name varchar(100)
);
create table students(
    pk_student_id serial primary key,
    student_name varchar(100),
    date_of_birth date,
    contact_number varchar(50),
    fk_class_id int,
    foreign key(fk_class_id) references classes(pk_class_id) on delete cascade on update cascade
);
