create database school;

\c school


create table classes(
    pk_class_id serial primary key,
    class_name varchar(100)
    );

create table subjects(
    pk_subject_id serial primary key,
    subject varchar(100)
);

create table students(
    pk_students_id serial primary key,
    s_name varchar(100),
    date_of_birth date,
    contact_number varchar(50),
    name_of_guardian varchar(100),
    fk_class_id int,
    foreign key(fk_class_id) references classes(pk_class_id) 
    on delete cascade on update cascade
);

create table teachers(
    pk_teacher_id serial primary key,
    t_name varchar(100),
    fk_subject_id int,
    foreign key(fk_subject_id) references subjects(pk_subject_id)
    on delete cascade on update cascade
 );

 create table examination(
    pk_exam_id serial primary key,
    exam_name varchar(100),
    date date,
    fk_subject_id int,
    foreign key(fk_subject_id) references subjects(pk_subject_id)
    on delete cascade on update cascade
 );

 insert into classes values
     (1,'10A'),
     (2,'10B'),
     (3,'10C'),
     (4,'10D'),
     (5,'10E');
     
 insert into subjects values
    (1,'malayalam'),
    (2,'english'),
    (3,'physics'),
    (4,'chemistry'),
    (5,'maths'),
    (6,'biology'),
    (7,'hindi');

 insert into students values
    (1,'shahana','2000-12-22','9824567833','sharafudeen',2),
    (2,'shifa','2002-01-10','9923456378','rahman',1),
    (3,'dhaya','2001-09-17','9787674563','mohan',3),
    (4,'adithya','2000-11-24','9945678934','kishore',3),
    (5,'sarath','2001-07-04','9756784933','krishna',2),
    (6,'faseeha','2004-04-09','8876563767','jamal',1),
    (7,'ajnas','2002-10-03','9876548876','ali akbar',4),
    (8,'amal','2003-01-22','9978675467','menon',5),
    (9,'bavya','2004-12-29','9878986544','das',4),
    (10,'arjun','2002-06-21','9587987655','james',1);

 insert into teachers values
    (1,'athira',2),
    (2,'pushpa',6),
    (3,'rubeena',4),
    (4,'danya',5),
    (5,'ambika',3),
    (6,'shanthi',1),
    (7,'gireesh',7);

 insert into examination values
    (1,'midterm examination','2022-12-12',1),
    (2,'halfterm examination','2022-12-05',2),
    (3,'annual examination','2022-12-08',3),
    (4,'midterm examination','2022-12-10',4);
    

 select * from students where fk_class_id=3;

 select s_name from students where fk_class_id=3;

 select * from examination where fk_subject_id=1;

 select exam_name,date from examination where fk_subject_id=3;

 select * from teachers where fk_subject_id=3;

 select * from students where date_of_birth < '2001-07-04';

 select s_name,date_of_birth from students where date_of_birth < '2001-07-04';

 select * from examination where date > '2022-12-10';

 select * from students where limit 3;

 select * from examination where fk_subject_id=1;

 select * from students where name_of_guardian like 'j%';

 select * from students where contact_number like '98%';

 select * from students where s_name like '%e';

 select * from subjects where subject like 'm%s';

 select * from students where name_of_guardian like '___';

  select * from teachers where t_name like 'athira';

  select * from examination where exam_name like 'midterm examination';

  CREATE TABLE student_marks(
   pk_mark_id SERIAL PRIMARY KEY,
   fk_student_id INT,
   fk_exam_id INT,
   marks_obtained INT,
   FOREIGN KEY(fk_student_id) REFERENCES students(pk_students_id) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY(fk_exam_id) REFERENCES examination(pk_exam_id) ON DELETE CASCADE ON UPDATE CASCADE
  );

  INSERT INTO student_marks VALUES
   (1,1,1,50),
   (2,2,1,45),
   (3,3,2,60),
   (4,4,2,67),
   (5,5,3,215),
   (6,6,2,77),
   (7,7,4,89),
   (8,8,3,299),
   (9,9,2,100),
   (10,10,4,205);

   SELECT SUM(marks_obtained) AS total_mark FROM student_marks;

    total_mark
------------
       1207
(1 row)

 SELECT AVG(marks_obtained) AS avarage_mark FROM student_marks WHERE fk_exam_id=1;

 avarage_mark
---------------------
 47.5000000000000000
(1 row)

 SELECT AVG(marks_obtained) AS avarage_mark FROM student_marks WHERE fk_exam_id=2;

 avarage_mark
---------------------
 76.0000000000000000
(1 row)

 SELECT AVG(marks_obtained) AS avarage_mark FROM student_marks WHERE fk_exam_id=3;

  avarage_mark
----------------------
 257.0000000000000000
(1 row)

SELECT COUNT(*) AS count FROM students WHERE fk_class_id=1;

count
-------
     3
(1 row)

SELECT COUNT(*) AS count FROM students WHERE fk_class_id=2;

 count
-------
     2
(1 row)

SELECT COUNT(*) AS count FROM students WHERE fk_class_id=3;

 count
-------
     2
(1 row)

SELECT COUNT(*) AS count FROM students WHERE fk_class_id=4;

 count
-------
     2
(1 row)

SELECT COUNT(*) AS count FROM students WHERE fk_class_id=5;

 count
-------
     1
(1 row)

SELECT SUM(marks_obtained) AS total_mark FROM student_marks GROUP BY 

SELECT t_name,subject FROM teachers INNER JOIN subjects ON subjects.pk_subject_id = teachers.fk_subject_id;

 t_name  |  subject
---------+-----------
 athira  | english
 pushpa  | biology
 rubeena | chemistry
 danya   | maths
 ambika  | physics
 shanthi | malayalam
 gireesh | hindi
(7 rows)

SELECT s_name,class_name FROM students INNER JOIN classes ON classes.pk_class_id = students.fk_class_id;

 s_name  | class_name
---------+------------
 arjun   | 10A
 faseeha | 10A
 shifa   | 10A
 sarath  | 10B
 shahana | 10B
 adithya | 10C
 dhaya   | 10C
 bavya   | 10D
 ajnas   | 10D
 amal    | 10E
(10 rows)

SELECT s_name,marks_obtained FROM students INNER JOIN student_marks ON students.pk_students_id = student_marks.fk_student_id WHERE fk_exam_id =1;




 
    