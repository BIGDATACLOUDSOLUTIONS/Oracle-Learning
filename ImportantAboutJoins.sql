ID,ENAME,DEPT,COMPID
1,James Potter,ICP,1001
2,Ethan McCarty,ETA,NULL
3,Emily Rayner,ETA,1002
4,Jack Abraham,ETA,NULL
5,Ayaz Mohammad,ICP,1003

COMPID,MAKE,MODEL,MYEAR
1001,Dell,Vostro,2013
1002,Dell,Precision,2014
1003,Lenovo,Edge,2013
1004,Lenovo,Horizon,2014


While using Inner Joins there can be a situation where you want to filter rows based on some criteria e.g. a need to fetch all employees
from ETA who are allocated a computer. The filter condition can be supplied in two ways when using ANSI syntax 
( t1 INNER JOIN t2 ON condition).
-----------------------------------------------
Option 1: Using a WHERE clause
select Id,Ename,E.CompId as E_CompId, C.CompId as C_CompId, Model
from Employee E INNER JOIN COMPUTER C ON E.CompId=C.CompId WHERE Dept= 'ETA'

The query is evaluated using a two-step process:
Step 1. Two tables are joined using join condition and resultset is evaluated
Step 2. Filter condition in WHERE clause is applied on all the rows of the resultset to give the final result

-----------------------------------------------
Option 2: Combining with the join condition using AND operator
select Id,Ename,E.CompId as E_CompId, C.CompId as C_CompId, Model
from Employee E INNER JOIN COMPUTER C ON E.CompId=C.CompId AND Dept= 'ETA'

Here the query is evaluated in a single step as the filter condition is applied right at the time of join condition evaluation.
-----------------------------------------------
Note:-Both these query versions give identical results for INNER joins.


--*********************************************************
Left Outer Join is used to fetch all rows from a main table and some additional information from a lookup table using join condition.
Unlike INNER JOINs additional conditions have to be supplied carefully depending upon the business requirement.

If the objective is to filter all records from the resultset then the filter condition must be supplied through the WHERE 
clause, e.g. a need to show employee details and model of their allocated computer for all employees who belong to 'ETA'.
select Id,Ename,E.CompId as E_CompId, C.CompId as C_CompId, Model
from Employee E LEFT OUTER JOIN COMPUTER C ON E.CompId=C.CompId WHERE Dept= 'ETA';

However care must be taken that this filter condition is using an attribute from the main table. Any attempt to 
filter (except check for NULL) using attribute from lookup table will result in wrong output as all NULL rows will get filtered 
and the purpose of using OUTER join will get defeated.

If we want to conditionally fetch values from the lookup table then the additional criteria must be combined with the join
condition using AND operator, e.g. a need to show details of all employees and in addition model of allocated computer for only those employees who are allocated a computer manufactured in '2014'.
select Id,Ename,E.CompId as E_CompId, C.CompId as C_CompId, Model
from Employee E LEFT OUTER JOIN COMPUTER C ON E.CompId=C.CompId AND Dept= 'ETA';

 
