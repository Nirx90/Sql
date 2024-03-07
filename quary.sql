select * from client_master;
select * from product_master;
select * from salesman_master;
select * from sales_order;
select * from sales_order_details;


------------------------------------------------------------------------------
select 2*2;

select sum(fees) from course;

select avg(fees) from course;

select max(fees) from course;

select min(fees) from course;

select count(*) from course;

select count(*) "Total Row" from course;
---------------------------------------------------------------------------------

---like Predicate
---first char i
select * from cliant_master where name like 'i%';

---last char a
select * from cliant_master where name like '%a';

---second char a
select * from cliant_master where name like '_a%';

---second last char a
select * from cliant_master where name like '%a_';

-------------------------------------------------------------------------------------
-- inner join 
select * from client_master cm
inner join sales_order so on so.ClientNo = cm.ClientNo
inner join salesman_master sm on sm.SalesmanNo = so.SalesmanNo
inner join sales_order_details sod on sod.OrderNo = so.orderno
inner join product_master pm on sod.ProductNo = pm.ProductNo;

select cm.name,pm.description from client_master cm
inner join sales_order so on so.ClientNo = cm.ClientNo
inner join salesman_master sm on sm.SalesmanNo = so.SalesmanNo
inner join sales_order_details sod on sod.OrderNo = so.orderno
inner join product_master pm on sod.ProductNo = pm.ProductNo
where pm.description = 'Trousers';

-------------------------------------------------------------------------------------

--- Group by
select pm.description,sum(sod.QtyOrderd)
from product_master pm,sales_order_details sod
where pm.ProductNo = sod.ProductNo
group by pm.description;

select pm.description,sum(sod.QtyOrderd)
from product_master pm,sales_order_details sod
where pm.ProductNo = sod.ProductNo
group by pm.description
having pm.description = 'Trousers';

select pm.Description,sum(sod.QtyOrderd) "Total Sales"
from Product_Master pm, Sales_Order_Details sod
where pm.ProductNo =sod.ProductNo 
group by pm.Description
having pm.Description = 'tshirt'; 

-------------------------------------------------------------------------------------
-- find ascii value of given character
select ascii('t');    --output = 97

-- find given character length including space
select char_length('Geeks For Geeks1212');

-- find given character length including space
select LENGTH('Geeks For Geeks1212');

-- find given character length including space 
select CHARACTER_LENGTH('Geeks For Geeks1212');  --output = 19

-- join words using given special character
select CONCAT_WS('_', 'geeks', 'for', 'geeks'); --output = geeks_for_geeks

-- select from left upto given number
select LEFT('geeksforgeeks.org', 5);  --output = geeks

-- select from right upto given number
select RIGHT('geeksforgeeks.org', 4);   --output = .org

--
select LOCATE('for', 'forgeeksforgeeksfor',10);

-- to lower all
select LOWER('GEEKSFORGEEKS.ORG');

-- to upper all
select UCASE ("GeeksForGeeks");

-------------------------------------------------------------------------------------

-- timming from left of given number
select TRIM(LEADING '0' FROM '000123');  -- output 123

-- 
select SUBSTRING_INDEX('www.geeksforgeeks.org', '.', 1);

select SUBSTRING('GeeksForGeeks.org', 9, 1);
select SUBSTR('geeksforgeeks', 1, 5);
select RPAD('geeks', 8, '0');

select STRCMP('google.com', 'google.com');

-- reverse all string
select REVERSE('geeksforgeeks.org');  -- output =  gro.skeegrofskeeg

-- find position of given char
select POSITION('e' IN 'geeksforgeeks');  --output = 2


----------------------------------- 19-02-2024 SubQuery ----------------------------------

-- Syntax -> select columnName1
-- from TableName1
-- where columnName2 in (select columnName2 from )


-- select name from student 
-- where Rollno in(select Student_ID from student_course
-- where course_id in(select course_id from course where course_name='Node'));


-- select name from student where Rollno 

-- select Student_ID from student_course where course_id
-- select course_id from course where course_name='Node';


------------------------------------------------------------------    



----------------------------- Date Function --------------------

-- 1. SELECT ADDDATE("2017-06-15", INTERVAL 10 DAY); -- add date 10
-- 2. SELECT DATE_ADD("2017-06-15", INTERVAL 10 DAY); -- add date 10
-- 3. SELECT ADDTIME("2017-06-15 09:34:21", "2"); -- second add
-- 4. SELECT SUBTIME("2017-06-15 10:24:21.000004", "5.000001"); -- subtract second
-- 5. SELECT CURDATE(); -- current date 
-- 6. SELECT CURRENT_DATE(); -- current date
-- 7. SELECT CURRENT_TIME(); -- current time
-- 8. SELECT CURTIME(); -- current time
-- 9. SELECT LOCALTIME(); -- current time
-- 10. SELECT CURRENT_TIMESTAMP(); -- current date and time
-- 11. SELECT LOCALTIMESTAMP(); -- current date and time
-- 12. SELECT NOW(); -- current date and time
-- 13. SELECT SYSDATE(); -- current date and time
-- 14. SELECT DATE("2017-06-15"); -- date
-- 15. SELECT TIME("19:30:10"); -- time
-- 16. SELECT TIMESTAMP("2017-07-23",  "13:10:11"); -- date and time
-- 17. SELECT YEAR("2017-06-15"); -- year
-- 18. SELECT DATEDIFF("2017-06-25", "2017-06-15"); -- date difference
-- 19. SELECT DATE_FORMAT("2017-06-15", "%Y"); -- date format - year,month,day
-- 20. SELECT DATE_SUB("2017-06-15", INTERVAL 10 DAY); -- day interval subtract 
-- 21. SELECT SUBDATE("2017-06-15", INTERVAL 10 DAY); -- day interval subtract