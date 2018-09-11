--list property ID and onwer nmae of that property
select propertyforrent.propertyno,privateowner.fname
from propertyforrent,privateowner
where propertyforrent.OWNERNO = privateowner.OWNERNO;

select p.propertyno,o.fname
from PROPERTYFORRENT p, PRIVATEOWNER o
where p.OWNERNO =o.OWNERNO;

--????
select p.propertyno,o.fname
from PROPERTYFORRENT p JOIN PRIVATEOWNER o on p.ownerno = o.OWNERNO;

--?????????????2???????????????
select p.propertyno,o.fname
from PROPERTYFORRENT p JOIN PRIVATEOWNER o USING(OWNERNO);

--NATURAL JOIN ?????????????????????????????
select p.propertyno,o.fname
from PROPERTYFORRENT p NATURAL JOIN PRIVATEOWNER o ;

--------------------------------------------------------------------------------------------------------------------------------
--SQL : Join Example
--
--1.	List names of all clients who have viewed a property along with any comment supplied.

SELECT c.FNAME, v.COMMENTS
FROM client c join viewing v on c.clientno = v.clientno
WHERE v.COMMENTS is not null;

--2.	List staff ID and names of staff, and properties they manage.
--SELECT * FROM PROPERTYFORRENT;
--SELECT * FROM STAFF;
SELECT s.STAFFNO , s.FNAME , p.PROPERTYNO
FROM staff s join PROPERTYFORRENT p on s.staffno = p.staffno;


--3.	List staff who manage properties, including city in which branch is located and properties they manage.

SELECT s.FNAME , b.CITY, p.PROPERTYNO
FROM staff s join branch b on s.BRANCHNO = b.BRANCHNO
    join propertyforrent p on s.staffno = p.staffno;

--4.	List staff name and the number of properties that they handle.

SELECT s.fname,count(p.propertyno) 
FROM staff s JOIN PROPERTYFORRENT p on s.staffno = p.staffno
GROUP BY s.fname;




--????????????????????
--???????????????????????
--???????????????????????
--EX ?????TABLE????????
--List staff name and their sup.name
--SELECT st.name ,sup.name
--FROM staff st join staff sup
--on st.supID = sop.staffID;

--5.	List staff who has the same position with  ‘Mary’.
SELECT s2.fname, s2.POSITION
FROM staff s1 cross join staff s2
where s1.fname = 'Mary' and s1.position = s2.position;


--Practices
--1.	List full details of all properties for rent along with owner’s name (first name and last name).

SELECT p.*,o.fname|| ' ' || o.lname AS name
FROM propertyforrent p join privateowner o on p.ownerno = o.ownerno;

--2.	List the staff number, first and last names and branch city of all staffs.

SELECT s.staffno,s.fname,s.lname,b.city
from staff s join branch b on s.BRANCHNO = b.BRANCHNO;


--3.	List the name of clients who have viewed the properties more than one time.

select c.fname,count(v.propertyno)
from client c join viewing v on c.clientno = v.CLIENTNO
group by c.fname
having count(v.propertyno) > 1;


--4.	List the number of properties handled by each staff member, along with the branch number of the member of staff

select s.STAFFNO ,b.BRANCHNO ,(p.PROPERTYNO)
from propertyforrent p join staff s on p.staffno = s.staffno
    join branchno b on b.branchno = s.branchno
    group by s.staffno,b.branchno;

--5.	List the branch cities that staffs manage the properties that are house type. Remove the duplicate records.



--6.	List the client name and view date of all viewings on properties that are managed by staffs’ branch office in Glasgow.



--7.	List the name of owners whose properties locate in Glasgow and clients have viewed the properties of the same owner more than two times.



--8.	List full details of all properties for rent along with owner’s name (first name and last name).  Show only the properties that are managed by staffs in Branch No B003.



--9.	How many properties are managed in each branch city? 


