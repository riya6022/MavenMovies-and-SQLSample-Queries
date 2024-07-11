/*3. Find the titles of movies in the 'horror' category 
and sort them based on the last character of the title*/
select title from film 
join film_category using(film_id)
join category using(category_id)
where name = 'Horror'
order by right(title, 1);