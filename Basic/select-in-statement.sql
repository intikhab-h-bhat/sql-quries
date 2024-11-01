-- selecct in statement

select student_name  from student where course_id in 
(select course_id from course where course_id=2);

select student_name  from student where course_id in
 (select course_id from course where duration_of_course=4);

--   inserting multiple rows in table 
insert into  student values 
(14,"abcd",3,'2024-11-01'),
(15,"abcd",3,'2024-11-01'),
(16,"abcd",1,'2024-11-01'),
(17,"abcd",2,'2024-11-01');

--  another way
INSERT INTO Student (ROLL_NO, NAME, ADDRESS, PHONE, AGE) VALUES
(1, 'Ram', 'Delhi', 'XXXXXXXXXX', 18),
(2, 'Ramesh', 'Gurgaon', 'XXXXXXXXXX', 18),
(3, 'Sujit', 'Rohtak', 'XXXXXXXXXX', 20),
(4, 'Suresh', 'Rohtak', 'XXXXXXXXXX', 18);