select * from students;

--1.	List students who do not live in Bangkok. Show all columns of student table.
--select * from students where province != 'Bangkok';
--select * from students where LOWER(province) != 'bangkok';
--select * from students where UPPER(province) !='BANGKOK';
--select * from students where province NOT LIKE 'Bangkok';
--select * from students where LOWER(province) NOT LIKE 'bangkok';
--select * from students where UPPER(province) NOT LIKE 'BANGKOK';

--2.	List students who have email accounts on Gmail. Display Student ID, Student name (firstname and lastname) and email.
--select student_id ,first_name || ' ' || last_name AS Student_name ,email from students where email LIKE '%gmail%';
--select student_id ,first_name || ' ' || last_name AS "Students name" ,email from students where email LIKE '%gmail%';
--select student_id ,first_name || '' || last_name AS Student_name ,email from students where LOWER(email) LIKE '%@gmail%' ;
--select student_id , first_name || ' ' || last_name AS "Student name" , email from students where LOWER(email) LIKE '%@gmail%';
--select student_id , first_name || ' ' || last_name AS Student_name ,email from students where UPPER(email) LIKE '%@GMAIL%';
--select student_id , first_name || ' ' || last_name AS "Student name" ,email from students where UPPER(email) LIKE '%@GMAIL%';

--3.	List provinces where students live in. Remove the duplicate provinces. The result should be arranged by province.
--select DISTINCT province from students ORDER BY province ASC;

--4.	Search the students who live in Pai amphur. Display the student name and mobile number.

--5.	Search the students who live in Pai amphur but do not locate in Mae Hong Son province.
--
--6.	List the students whose mobile number contains digits of 089. Arrange the result in ascending order by mobile number.
--
--7.	List the students whose mobile number has digit 9 or digit 6. Display the student name (firstname and lastname) and mobile number.
--
--8.	List the students that sum of all digits in their mobile number is 54. Display the student name (firstname and lastname), mobile number and email.
