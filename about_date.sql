SELECT to_date('1-feb-1990') FROM dual;
-- change nls to RRRR
SELECT to_date('1-2-1990') FROM dual;
SELECT to_date('1-2-1990', 'dd-mm-rrrr') FROM dual;

SELECT to_date('1-2-90', 'dd-mm-rr') FROM dual;
SELECT to_date('1-2-90', 'dd-mm-yy') FROM dual;
SELECT to_date('1-2-10', 'dd-mm-rr') FROM dual;
SELECT to_date('1-2-10', 'dd-mm-yy') FROM dual;

SELECT to_date('1-2-2010', 'dd-mm-yyyy') FROM dual;
SELECT to_date('1-2-2010', 'mm-dd-yyyy') FROM dual;
-- change nls to RR
-- -- --

SELECT fname, dob FROM staff;
-- 1. List the name of staff who was born on the 3rd of the month
SELECT fname, dob FROM staff WHERE dob like '3%';
SELECT fname, dob FROM staff WHERE dob like '03%';
SELECT fname, dob FROM staff WHERE TO_CHAR(dob,'dd')='3';
SELECT fname, dob FROM staff WHERE TO_CHAR(dob,'dd')='03';
SELECT fname, dob FROM staff WHERE EXTRACT(day from dob)= 3;
SELECT fname, dob FROM staff WHERE EXTRACT(day from dob)= 03;

-- 2. List the name of staff who was born before the 15st of the month
SELECT fname, dob FROM staff WHERE EXTRACT(day from dob) < 15;

-- 3. List the name of staff who was born on February
SELECT fname, dob FROM staff WHERE dob like '%FEB%';
SELECT fname, dob FROM staff WHERE dob like '%feb%';
SELECT fname, dob FROM staff WHERE dob like '%02%';
SELECT fname, dob FROM staff WHERE dob like '%2%';

SELECT fname, dob FROM staff WHERE TO_CHAR(dob,'MON')='FEB';
SELECT fname, dob FROM staff WHERE TO_CHAR(dob,'mm')= 02;

SELECT fname, dob FROM staff WHERE EXTRACT(month from dob)= 2;

-- 4. List the name of staff who was born in the 4st quarter of the year
SELECT fname, dob FROM staff WHERE EXTRACT(month from dob) in (10, 11, 12);

-- 5. List the name of staff who was born in 1960
SELECT fname, dob FROM staff WHERE dob like '%60';
SELECT fname, dob FROM staff WHERE dob like '%1960';

SELECT fname, dob FROM staff WHERE TO_CHAR(dob,'yy')= 60;
SELECT fname, dob FROM staff WHERE TO_CHAR(dob,'yyyy')= 1960;

SELECT fname, dob FROM staff WHERE EXTRACT(year from dob)= 60;
SELECT fname, dob FROM staff WHERE EXTRACT(year from dob)= 1960;

-- 5. List the name of staff who was born after 1955
SELECT fname, dob FROM staff WHERE EXTRACT(year from dob) > 1955;

