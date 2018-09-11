--list property ID and oewr nmae of that property
--select p

---------------------------------------------------------------------
--1. List names of all who  have viewed a property
--along with any comment supplied.
select c.fname ,v.comments
from client c join viewing v on c.clientno = v.clientno 
where v.comments is not null;

--2. List staff ID and names of staff, and properties they manage.

SELECT s.staffno , s.fname,p.propertyno
FROM staff s join propertyforrent p on s.staffno = p.staffno;

--3. List satff who manage properties'
-- including city in which branch is located and properties they manage.

select s.fname , p.propertyno,b.city
from staff s join propertyforrent p on s.staffno = p.staffno
            join branch b on b.branchno = s.branchno;

--4. List satff name and the number of properties that they handle
select s.staffno, s.fname,count(p.propertyno)
from staff s join propertyforrent p on s.staffno = p.staffno
group by s.staffno , s.fname;

SELECT * FROM staff s join propertyforrent p on s.staffno = p.staffno;

--5. List staff who has the same position whith 'Mary'
SELECT * FROM staff s1 cross join staff s2
WHERE s1.fname = 'Mary' and s1.position = s2.position;

