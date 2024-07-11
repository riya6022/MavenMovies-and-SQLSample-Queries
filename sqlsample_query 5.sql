 -- 5. Write an SQL query using CTE's and window functions inside it to retrieve 
 -- the top 5 customers along with their total order values across all orders.
 
 
 with CustomerTotalOrders as (
select c.CustomerNumber,
	   count(ord.quantityOrdered) as total_order_value
from
	Customers c
join orders o using(CustomerNumber)
join orderdetails ord using(orderNumber)
group by 1
)
select customerNumber , total_order_value , 
dense_rank() over (order by total_order_value desc) as Rank_customer
from CustomerTotalOrders 
limit 5;
 