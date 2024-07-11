/* 1.Find the titles of movies except starting with a that have been rented more than 30 times, 
and sort them in desc order.*/
select f.title , sum(r.rental_id) as total_rentals from film f
join inventory i on f.film_id = i.inventory_id
join rental r on i.inventory_id = r.inventory_id
where title not like 'A%'
group by 1
having total_rentals >30
order by 2 desc ;