/* 4. Retrieve the top 5 customers whose name starts with E and have made the highest number of rentals. 
Display their customer IDs and the total number of rentals they have made*/
select c.customer_id, c.first_name, count(r.rental_id) as total_rentals
from customer c
join rental r on c.customer_id = r.customer_id
where c.first_name like 'E%'
group by c.customer_id, c.first_name
order by total_rentals desc
limit 5;
