-- 1. Multiple aggregation functions
SELECT MAX(MAXRENT),MIN(MAXRENT),COUNT(*),AVG(MAXRENT)
  FROM CLIENT ;
-- define number of decimal
SELECT MAX(MAXRENT),MIN(MAXRENT),COUNT(*),cast(AVG(MAXRENT) as decimal(6,2))
  FROM CLIENT ;
  
-- 2. Can use aggregation function without group by.
--It means only one group and show the count of records
SELECT COUNT(CLIENTNO)
 FROM  CLIENT;
-- with group by
SELECT preftype, COUNT(CLIENTNO) as "Number of client"
 FROM  CLIENT 
 group by preftype;

-- 3. You can display  the min and count without
--any columns but it shows the number without
--infomation about the grouped column.
SELECT PREFTYPE, MIN(MAXRENT), COUNT(*)
FROM CLIENT
GROUP BY PREFTYPE ;

--4. Can have only aggregration function without
--  columns that are in the group by clause.
SELECT COUNT(*)
FROM CLIENT
GROUP BY PREFTYPE,MAXRENT ;

--5. Can not run this query because the maxrent
--don't have aggregration function or don't including
--in group by clause
SELECT PREFTYPE,MAXRENT, COUNT(*)
FROM CLIENT
GROUP BY PREFTYPE ;

--6. Using two columns for group by
-- The columns in SELECT must be include in GROUP BY
-- The columns in GROUP BY may not include in SELECT,
--   but recomment they should be in.
SELECT PREFTYPE,MAXRENT, COUNT(*)
FROM CLIENT
GROUP BY PREFTYPE,MAXRENT;

--7. Using HAVING to limit the result of groups
SELECT PREFTYPE,MAXRENT, COUNT(*)
FROM CLIENT
GROUP BY PREFTYPE,MAXRENT
HAVING COUNT(*)>1;

--8. Can run query but not recommend
SELECT PREFTYPE,MAXRENT, COUNT(*)
FROM CLIENT
GROUP BY PREFTYPE,MAXRENT
HAVING MAXRENT>350 ;
-- This query should be
SELECT PREFTYPE,MAXRENT, COUNT(*)
  FROM CLIENT
  WHERE MAXRENT>350
  GROUP BY PREFTYPE,MAXRENT;

--9. Aggregate function in having is not need 
--to show in the select statement
SELECT PREFTYPE, COUNT(*)
FROM CLIENT
GROUP BY PREFTYPE 
HAVING SUM(MAXRENT)<1500;
