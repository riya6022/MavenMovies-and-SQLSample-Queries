/*2.Find the total revenue generated by store1.*/
select sum(p.amount) as total_revenue from payment p
join staff s using(staff_id)
where store_id = 1
