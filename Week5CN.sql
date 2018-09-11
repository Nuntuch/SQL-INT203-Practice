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
