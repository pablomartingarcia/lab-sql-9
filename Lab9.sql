-- 1 and 2
create table rentals_may as
select * from rental
where month(rental_date) = 5;

select * from rentals_may;

-- 3 and 4
create table rentals_june as
select * from rental
where month(rental_date) = 6;

select * from rentals_june;

-- 5
select customer_id, count(*) as rental_count_may from rentals_may
group by customer_id;

-- 6
select customer_id, count(*) as rental_count_june from rentals_june
group by customer_id;