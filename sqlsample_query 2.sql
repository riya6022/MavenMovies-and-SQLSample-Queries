-- 2. Retrieve the list of customers who have placed orders but haven't made any payments yet.

select c.customerNumber , c.customerName , o.ordernumber from customers c
inner join orders o on c.customerNumber = o.customerNumber
where not exists(select customerNumber from payments p
                 where c.customerNumber = p.customerNumber);
