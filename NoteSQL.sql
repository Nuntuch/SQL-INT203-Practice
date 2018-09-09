
--Statement 1.	
SELECT   *  	FROM   students ;

--Statement 2.	
SELECT    student_id, prefix , first_name, last_name, dob ,
      address, district, amphur, province, zipcode, email, mobile
		FROM	      students  ;

--Statement 3.
SELECT   student_id ,  prefix || ' '  ||  first_name || ' '  ||   last_name  AS  name
FROM      students ;

--Statement 4.	
SELECT   DISTINCT  first_name	FROM   students ;

--Statement 5.
SELECT   SUBSTR(first_name,1,2)   FROM students ;

--Statement 6.
SELECT   *   FROM students 
WHERE  first_name = 'John'  ;

--Statement 7.	
SELECT   *   FROM students 
WHERE  DOB < '1-AUG-1998'  ;

--Statement 8.
SELECT   *   FROM students 
WHERE  student_id = 59130505001  ;

--Statement 9.
SELECT    student_id, prefix , first_name, last_name
FROM students
WHERE    first_name  LIKE  'J%'   ;

--Statement 10.
SELECT    student_id, prefix , first_name, last_name
FROM students
WHERE    student_id  LIKE  '5913%'   ;

--Statement 11.
SELECT    student_id, prefix , first_name, last_name
FROM students
WHERE    student_id  LIKE  '5_13%'   ;

--Statement 12.
SELECT   *   FROM students 
WHERE  first_name = 'John'  
AND   last_name  LIKE  '%ter%'  ;

--Statement 13.
SELECT    student_id, prefix , first_name, last_name
FROM      students
WHERE    email  IS NULL   ;

--Statement 14.
SELECT    student_id, prefix , first_name, last_name
FROM      students
WHERE    mobile  IS  NOT  NULL   ;

--Statement 15.
SELECT   CONCAT(address, district)  , zipcode
FROM      students  
WHERE    zipcode='10140'   ;


--Statement 16.
SELECT   CONCAT(address, district)  , zipcode
FROM      students  
WHERE    zipcode IN ('10140', '10150')   ;

--Statement 17.
SELECT   last_name, first_name, student_id
FROM      students  
ORDER BY  last_name   ;

--Statement 18.	
SELECT   last_name, first_name, student_id
FROM      students  
ORDER BY  last_name  ASC ;

--Statement 19.
SELECT   last_name, first_name, student_id
FROM      students  
ORDER BY  last_name  DESC  ;

--Statement 20.
SELECT   last_name, first_name, student_id
FROM      students  
ORDER BY  last_name, first_name  ;

--Statement 21.	
SELECT   last_name, first_name, student_id
FROM      students  
ORDER BY  1, 2  ;

--Statement 22.
SELECT   student_id , 
      prefix || ' '  ||  first_name || ' '  ||   last_name  AS  name, dob
FROM      students 
WHERE   dob   BETWEEN  ' 1-JAN-2000'   AND ' 31-DEC-2010'  
ORDER  BY   dob;

