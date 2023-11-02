billing=# \c sample

sample=# create table student(id serial primary key,student_name varchar(50)not null,class varchar(10) not null,selection varchar(10)not null);
CREATE TABLE

sample=# insert into student(student_name,class,selection) values ('jim','10','A'),('reen','9','B'),('arjun','11','C'),('surya','10','B'),('diya','9','A'),('priya','11','B'),('sneha','10','C'),('sarah','9','A'),('sam','11','A'),('april','10','B');
INSERT 0 10

sample=# create table student_grade(id serial primary key,student_id integer references student(id),subject varchar(50)not null,grade varchar(2)not null,mark float);
CREATE TABLE

sample=# insert into student_grade(student_id,subject,grade,mark) values(1,'chemistry','A',55.5),(1,'physics','B',65),(1,'biology','F',78.9),(2,'chemistry','B',24.5),(2,'biology','C',44);
INSERT 0 5
sample=# select * from student;
 id | student_name | class | selection
----+--------------+-------+-----------
  1 | jim          | 10    | A
  2 | reen         | 9     | B
  3 | arjun        | 11    | C
  4 | surya        | 10    | B
  5 | diya         | 9     | A
  6 | priya        | 11    | B
  7 | sneha        | 10    | C
  8 | sarah        | 9     | A
  9 | sam          | 11    | A
 10 | april        | 10    | B
(10 rows)

sample=# select * from student_grade;
 id | student_id |  subject  | grade | mark
----+------------+-----------+-------+------
  1 |          1 | chemistry | A     | 55.5
  2 |          1 | physics   | B     |   65
  3 |          1 | biology   | F     | 78.9
  4 |          2 | chemistry | B     | 24.5
  5 |          2 | biology   | C     |   44
(5 rows)


select s.student_name, s.class, sg.grade 
from student s inner join student_grade sg 
on s.id = sg.student_id;

 student_name | class | grade
--------------+-------+-------
 jim          | 10    | A
 jim          | 10    | B
 jim          | 10    | F
 reen         | 9     | B
 reen         | 9     | C
(5 rows)


select s.student_name, s.class, sg.grade 
from student s inner join student_grade sg 
on s.id = sg.student_id
where sg.subject = 'biology' and sg.grade = 'F';

student_name | class | grade
--------------+-------+-------
 jim          | 10    | F
(1 row)

create view biology_failed as
select s.student_name, s.class, sg.grade 
from student s inner join student_grade sg 
on s.id = sg.student_id
where sg.subject = 'biology' and sg.grade = 'F';

sample=# select * from biology_failed;
 student_name | class | grade
--------------+-------+-------
 jim          | 10    | F
(1 row)

create view failed_students as
select s.student_name,s.class,sg.grade
from student s inner join student_grade sg
on s.id = sg.student_id
where sg.grade = 'F';

sample=# select * from failed_students;
 student_name | class | grade
--------------+-------+-------
 jim          | 10    | F
(1 row)

create view physics_failed as
select s.student_name, s.class, sg.grade 
from student s inner join student_grade sg 
on s.id = sg.student_id
where sg.subject = 'physics' and sg.grade = 'F';

sample=# select * from physics_failed;
 student_name | class | grade
--------------+-------+-------
(0 rows)

x

create view physics_A_grade as
select s.student_name, s.class, sg.grade 
from student s inner join student_grade sg 
on s.id = sg.student_id
where sg.subject = 'physics' and sg.grade = 'A';

sample=# select * from physics_A_grade;
 student_name | class | grade
--------------+-------+-------
 sneha        | 10    | A
(1 row)

create view top_student as
select s.student_name,sg.subject,avg(sg.mark) as avarage_marks
from student s 
inner join student_grade sg
on s.id = sg.student_id
group by s.student_name,sg.subject
order by avarage_marks desc;



student_name |  subject  | avg
--------------+-----------+------
 jim          | biology   |   20
 reen         | chemistry |   88
 priya        | chemistry | 98.9
 sneha        | physics   |   99
 jim          | physics   |   81
 reen         | biology   |   71
 jim          | chemistry |   93
 sarah        | biology   | 97.8
(8 rows)

 id | student_name | class | selection
----+--------------+-------+-----------
  1 | jim          | 10    | A
  2 | reen         | 9     | B
  3 | arjun        | 11    | C
  4 | surya        | 10    | B
  5 | diya         | 9     | A
  6 | priya        | 11    | B
  7 | sneha        | 10    | C
  8 | sarah        | 9     | A
  9 | sam          | 11    | A
 10 | april        | 10    | B
(10 rows)

sample=# select * from student_grade;
 id | student_id |  subject  | grade | mark
----+------------+-----------+-------+------
  5 |          2 | biology   | C     |   71
  4 |          2 | chemistry | B     |   88
  6 |          6 | chemistry | A     | 98.9
  7 |          7 | physics   | A     |   99
  8 |          8 | biology   | A     | 97.8
  1 |          1 | chemistry | A     |   93
  2 |          1 | physics   | B     |   81
  3 |          1 | biology   | F     |   20
(8 rows)


insert into student_grade(student_id,subject,grade,mark) values
(7,'chemistry','A',96),
(8,'physics','B',88),
(6,'physics','C',71.9),
(8,'chemistry','C',77),
(6,'biology','F',22);

CREATE TABLE employees(
  pk_emp_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  gender VARCHAR(30),
  phone VARCHAR(20),
  dob DATE,
  place VARCHAR(50)
);

INSERT INTO employees VALUES
(1,'adithya','ev','adi@gmail.com','female','9876765434','2002-10-2','calicut'),
(2,'dhaya','er','daya@gmail.com','female','8806765434','2002-12-10','wayanad'),
(3,'adithya','k','adithya@gmail.com','female','9466765434','2002-4-2','calicut'),
(4,'ajnas','m','ajnas@gmail.com','male','9876765434','2001-5-9','eranamkulam'),
(5,'abhijith','ms','abhijith@gmail.com','male','9876765434','2000-7-10','malappuram'),
(6,'sharanya','s','saranya@gmail.com','female','9875565434','1998-10-1','kannur'),
(7,'sarath','mohan','sarath@gmail.com','male','9876765657','2002-1-12','calicut'),
(8,'kavya','krishna','kavya@gmail.com','female','9176765488','2000-4-11','idukki'),
(9,'manya','s','manya@gmail.com','female','9576765439','2003-4-2','malappuram'),
(10,'akarsh','mohan','akarsh@gmail.com','male','9976765477','1999-4-2','wayanad');

sample=# select * from employees;
 pk_emp_id | first_name | last_name |       email        | gender |   phone    |    dob     |    place
-----------+------------+-----------+--------------------+--------+------------+------------+-------------
         1 | adithya    | ev        | adi@gmail.com      | female | 9876765434 | 2002-10-02 | calicut
         2 | dhaya      | er        | daya@gmail.com     | female | 8806765434 | 2002-12-10 | wayanad
         3 | adithya    | k         | adithya@gmail.com  | female | 9466765434 | 2002-04-02 | calicut
         4 | ajnas      | m         | ajnas@gmail.com    | male   | 9876765434 | 2001-05-09 | eranamkulam
         5 | abhijith   | ms        | abhijith@gmail.com | male   | 9876765434 | 2000-07-10 | malappuram
         6 | sharanya   | s         | saranya@gmail.com  | female | 9875565434 | 1998-10-01 | kannur
         7 | sarath     | mohan     | sarath@gmail.com   | male   | 9876765657 | 2002-01-12 | calicut
         8 | kavya      | krishna   | kavya@gmail.com    | female | 9176765488 | 2000-04-11 | idukki
         9 | manya      | s         | manya@gmail.com    | female | 9576765439 | 2003-04-02 | malappuram
        10 | akarsh     | mohan     | akarsh@gmail.com   | male   | 9976765477 | 1999-04-02 | wayanad
(10 rows)


SELECT * FROM employees WHERE email = 'adi@gmail.com';

 pk_emp_id | first_name | last_name |     email     | gender |   phone    |    dob     |  place
-----------+------------+-----------+---------------+--------+------------+------------+---------
         1 | adithya    | ev        | adi@gmail.com | female | 9876765434 | 2002-10-02 | calicut
(1 row)

CREATE INDEX employees_email_idx ON employees(email);