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




--5.	List staff who has the same position with  ‘Mary’.





????????????????????
???????????????????????
???????????????????????
--List staff name and their sup.name