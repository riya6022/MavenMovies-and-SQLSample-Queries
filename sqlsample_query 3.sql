/* 3. Retrieve a product that has been ordered the least number of times. Display the product code, 
product name, and the number of times it has been ordered. */

select p.productCode , p.productName ,(select count(*) from Orderdetails O 
where O.ProductCode = P.ProductCode) as ordercount
from products p
inner join orderdetails o on p.productCode = o.productCode
group by 1,2
order by 3 asc
limit 5