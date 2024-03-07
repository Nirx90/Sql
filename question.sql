-- 3. Exercise on retrieving records from a table

-- a. Find out the names of all the clients.
select name from client_master;

-- b. Retrieve the entire contents of the Client_Master table.
select * from client_master;

-- c. Retrieve the list of names, city and the sate of all the clients.
select name,city,state from client_master; 

-- d. List the various products available from the Product_Master table.
select description from Product_Master;

-- e. List all the clients who are located in Mumbai.
select name from client_master where city = 'mumbai';

-- f. Find the names of salesmen who have a salary equal to Rs.3000.
select Name from SALESMAN_MASTER where SaleAmt = 3000;


-- 4. Exercise on updating records in a table

-- a. Change the city of ClientNo 'C00005' to 'Bangalore'. 
update client_master set city = 'Bangalore' where  ClientNo = 'c0005';

-- b. Change the BalDue of ClientNo 'C00001' to Rs. 1000.
update client_master set baldue = 1000 where  ClientNo = 'c0001';

-- c. Change the cost price of Trousers' to Rs. 950.00.
update product_master set costprice=950 where description = 'trousers';

-- d. Change the city of the salesman to Pune.
update salesman_master set city='pune';


-- 5. Exercise on deleting records in a table

-- a. Delete all salesmen from the Salesman_Master whose salaries are equal to Rs. 3500. 
delete from Salesman_Master where SaleAmt = 3500;

-- b. Delete all products from Product_Master where the quantity on hand is equal to 100.
delete from Product_Master where QtyOnHand = 100;

-- c. Delete from Client Master where the column state holds the value 'Tamil Nadu'.
delete from client_master where state = 'tamil nadu';


-- 6. Exercise on altering the table structure

-- a. Add a column called "Telephone' of data type 'number' and size='10' to the Client Master table.
alter table client_master Add Telephone varchar(10);
-- b. Change the size of SellPrice column in Product Master to 10,2.
alter table product_master modify SellPrice int(2);


-- 7. Exercise on deleting the table structure along with the data

-- a. Destroy the table Client_Master along with its data.
drop table client_master;


-- 8. Exercise on renaming the table

-- a. Change the name of the Salesman_Master table to sman mast.
Rename table salesman_master to sman_mast; 


-- a. Find out the products, which have been sold to "Ivan Bayross'.-----------------

select pm.description,cm.name from 
product_master pm 
inner join sales_order_details on sales_order_details.ProductNo = pm.ProductNo
inner join sales_order on sales_order_details.orderno = sales_order.orderno
inner join cliant_master cm on sales_order.ClientNo = cm.ClientNo
where sales_order.ClientNo = 'C0001';

--b. Find out the products and their quantities that will have to be delivered in the current month.

select pm.description,pm.QtyOnHand from 
product_master pm 
inner join sales_order_details sod on sod.ProductNo = pm.ProductNo
inner join sales_order so on sod .orderno = so.orderno
inner join cliant_master cm on so.ClientNo = cm.ClientNo
inner join salesman_master sm on sm.SalesmanNo = so.SalesmanNo
where so.OrderDate='18-feb-04';

-- c. List the ProductNo and description of constantly sold (i.e. rapidly moving) products.

select pm.ProductNo,pm.description from 
product_master pm 
inner join sales_order_details sod on sod.ProductNo = pm.ProductNo
inner join sales_order so on sod .orderno = so.orderno
inner join cliant_master cm on so.ClientNo = cm.ClientNo
inner join salesman_master sm on sm.SalesmanNo = so.SalesmanNo
where sod.QtyOrderd=10;

-- d. Find the names of clients who have purchased Trousers'.
select cm.name,pm.description from 
product_master pm 
inner join sales_order_details sod on sod.ProductNo = pm.ProductNo
inner join sales_order so on sod .orderno = so.orderno
inner join cliant_master cm on so.ClientNo = cm.ClientNo
inner join salesman_master sm on sm.SalesmanNo = so.SalesmanNo
where  pm.description='trousers';


-- e. List the products and orders from customers who have ordered less than 5 units of 'Pull Overs'
select pm.description,sod.QtyOrderd from 
product_master pm 
inner join sales_order_details sod on sod.ProductNo = pm.ProductNo
inner join sales_order so on sod .orderno = so.orderno
inner join cliant_master cm on so.ClientNo = cm.ClientNo
inner join salesman_master sm on sm.SalesmanNo = so.SalesmanNo
where sod.QtyOrderd<5 and pm.description='pull overs';


-- f. Find the products and their quantities for the orders placed by 'Ivan Bayross' and 'Mamta Muzumdar 
select cm.name,pm.description,sod.QtyOrderd from 
product_master pm 
inner join sales_order_details sod on sod.ProductNo = pm.ProductNo
inner join sales_order so on sod .orderno = so.orderno
inner join cliant_master cm on so.ClientNo = cm.ClientNo
inner join salesman_master sm on sm.SalesmanNo = so.SalesmanNo
where cm.name = 'ivan bayross' or cm.name = 'mamta muzumdar';


-- g. Find the products and their quantities for the orders placed by ClientNo 'C00001' and 'C00002'
select cm.ClientNo,pm.description,sod.QtyOrderd from 
product_master pm 
inner join sales_order_details sod on sod.ProductNo = pm.ProductNo
inner join sales_order so on sod .orderno = so.orderno
inner join cliant_master cm on so.ClientNo = cm.ClientNo
inner join salesman_master sm on sm.SalesmanNo = so.SalesmanNo
where cm.ClientNo = 'c0001' or cm.ClientNo = 'c0002';


Using the tables created previously generate the SQL statements for the operations mentioned below. The tables in user are as follows:
a.Client Master
b.Product Master
C.Salesman Master
d.Sales Order
e.Sales Order Details

1.Perform the following computations on table data:
a. List the names of all clients having 'a' as the second letter in their names.
select * from client_master where name like '_a%';

b. List the clients who stay in a city whose First letter is 'M'.
select name from client_master where city like 'm%';

C. List all clients who stay in 'Bangalore' or 'Mangalore'
select name from client_master where city = 'Banglore' or city = 'Manalore';

d. List all clients whose BalDue is greater than value 10000.
select name from client_master where BalDue > 10000;

e. List all information from the Sales Order table for orders placed in the month of June.
select * from sales_order where OrderDate like '___j%';

f. List the order information for ClientNo 'C00001' and 'C00002'.
select * from sales_order_details
inner join sales_order on sales_order.orderno = sales_order_details.orderno
where sales_order.ClientNo='C0001' or sales_order.ClientNo='C0002';

select * from 
sales_order_details,sales_order
where sales_order.orderno = sales_order_details.orderno
and sales_order.ClientNo='C0001';

select * from sales_order where ClientNo='C0001'and ClientNo='C0002';

g. List products whose selling price is greater than 500 and less than or equal to 750.
select description from product_master where SellPrice>500 and SellPrice<=750;

h. List products whose selling price is more than 500. Calculate a new selling price as, original selling 
price *15. Rename the new column in the output of the above query as new_price.
select description from product_master where SellPrice>500;
select SellPrice*15 "new_price" from product_master;

select description,SellPrice*15 "new_price" from product_master where SellPrice>500;

i. List the names, city and state of clients who are not in the state of 'Maharashtra'.
select name,city,state from client_master where state !='Maharashtra';

j. Count the total number of orders.
select count(orderno) "Total_no_of_order" from sales_order_details;

k. Calculate the average price of all the products.
select avg(ProductRate) from sales_order_details;

l. Determine the maximum and minimum product prices. Rename the output as max_price and min_price respectively.
select max(ProductRate)"max_price",min(ProductRate)"min_price" from sales_order_details;

m. Count the number of products having price less than or equal to 500.
select count(SellPrice) from product_master where SellPrice<= 500;

n. List all the products whose QtyOnHand is less than reorder level.
select description from product_master where QtyOnHand>RecordLvl;

1. Exercises on using Having and Group By Clauses:

a. Print the description and total qty sold for each product.
select pm.description,sum(sod.QtyOrdered)
from product_master pm,sales_order_details sod
where pm.ProductNo = sod.ProductNo
group by pm.description;


b. Find the value of each product sold.
select pm.description,sum(sod.ProductRate) from 
product_master pm 
inner join sales_order_details sod on sod.ProductNo = pm.ProductNo
inner join sales_order so on sod .orderno = so.orderno
inner join client_master cm on so.ClientNo = cm.ClientNo
inner join salesman_master sm on sm.SalesmanNo = so.SalesmanNo
group by pm.description,so.OrderStatus
having so.OrderStatus="fullfilled";

select pm.description,sum(sod.ProductRate)
from product_master pm,sales_order_details sod,sales_order so
where pm.ProductNo = sod.ProductNo
and sod .orderno = so.orderno
group by pm.description,so.OrderStatus
having so.OrderStatus="fullfilled";

c. Calculate the average qty sold for each client that has a maximum order value of 15000.00


select cm.name,avg(sod.QtyOrdered)
from client_master cm,product_master pm,sales_order so,sales_order_details sod
where cm.ClientNo = so.ClientNo
and so.orderno = sod.orderno
and pm.ProductNo = sod.ProductNo
group by cm.name;

select pm.description,avg(sod.ProductRate)
from client_master cm,product_master pm,sales_order so,sales_order_details sod
where cm.ClientNo = so.ClientNo
and so.orderno = sod.orderno
and pm.ProductNo = sod.ProductNo
group by pm.description
having sum(sod.ProductRate) > 15000;


  

d. Find out the total of all the billed orders for the month of June.