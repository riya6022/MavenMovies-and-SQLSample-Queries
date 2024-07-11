/* 1. Find the top 10 customers who have placed the most orders. 
Display customer name and the count of orders placed. */
use classicmodels;
select c.customerNumber , c.customername , count(ord.ordernumber) as ordercount , 
rank() over(order by count(ord.ordernumber) desc) as rank_customer from customers c
inner join orders o on c.customerNumber = o.customerNumber
inner join orderdetails ord on o.orderNumber = ord.orderNumber
group by 1,2
-- order by 3 desc
limit 10

