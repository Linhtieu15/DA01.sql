--Ex 1: 
 select
 Name
 from STUDENTS
 where Marks > 75
 order by RIGHT(Name,3),  ID;

--Ex2:
select 
user_id,
upper(left(name,1)) || lower(right(name,length(name)-1) as name
from Users
order by user_id  
--Cách 2:
  select user_id, 
    concat(upper(left(name,1)),lower(substring(name,2))) as name
from Users 
order by user_id

--Ex 3:
SELECT 
manufacturer,
CONCAT('$',round(sum(total_sales)/1000000,0),' ', 'million') as sales_mil
FROM pharmacy_sales
group by manufacturer	 
order by ceiling(sum(total_sales)/1000000) desc, manufacturer asc 

--Ex 4:
SELECT 
EXTRACT(month from submit_date) as month,
product_id,
round(avg(stars),2) as avg_stars
FROM reviews
group by EXTRACT(month from submit_date), product_id
order by month, product_id

--Ex 5:
  SELECT 
sender_id,
count(message_id) as message_count
FROM messages
where sent_date BETWEEN '2022-07-31'and '2022-09-01' --chỗ này có thể dùng extract month và date 
group by  sender_id
order by message_count desc
limit 2 

--Ex 6:
 select
 tweet_id
 from Tweets
 where length(content) > 15

--Ex 7:
select 
activity_date as day,
count(distinct user_id) as active_users
from Activity
where activity_date between "2019-06-28" and "2019-07-27"
group by activity_date
having count(activity_type) >  0

--Ex 8:
select 
count(distinct id)
from employees
where extract(month from joining_date) >=  1 and extract(month from joining_date)   <= 7
and extract(year from joining_date) = 2022

--Ex 9:
select 
position('a'in first_name)
from worker
where first_name = 'Amitah';

--Ex10:
select 
substring(title from length(winery)+2 for 4)
from winemag_p2
where country = 'Macedonia';
