/* 5. Find the total number of films available in each category, 
and list the categories in descending order of film count.*/
select distinct c.name , count(f.film_id) as film_count from film f
join film_category fc using(film_id)
join category c using(category_id)
group by 1
order by 2 desc;