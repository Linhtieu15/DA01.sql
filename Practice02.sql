--Ex 1:
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0;

--Ex 2:
select count (CITY)  - count (distinct CITY) from STATION;

--Ex 4:
SELECT round(CAST (SUM(item_count*order_occurrences)/SUM(order_occurrences) 
AS DECIMAL),1) as mean
FROM items_per_order;
-- CAST XXX AS DECIMAL: chuyển từ int về decimal do Postgresql coi kết quả chia là số nguyên, k thể round up

-- Ex 5:
SELECT DISTINCT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING count(skill) = 3;

--Ex 6:
SELECT user_id, MAX(Date(post_date)) - MIN (Date(post_date))	AS days_between
FROM posts
WHERE post_date between '2020-12-31' AND '2022-01-01'
GROUP BY user_id
HAVING COUNT(post_id)>= 2 ;

--Ex 7:
SELECT card_name, max(issued_amount) - min(issued_amount) as difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY card_name DESC;

--Ex 8:
SELECT manufacturer,
count (drug) as drug_count,
abs (sum(cogs-total_sales)) as total_loss
FROM pharmacy_sales
WHERE (cogs-total_sales) > 0
group by manufacturer  
order by abs (sum(cogs-total_sales)) DESC;

--Ex  9:
select id,movie, description, rating
from Cinema
where id%2 <> 0 and description <> 'boring'
order by rating desc 

--Ex 10:
 select teacher_id, count(distinct subject_id) as cnt
 from Teacher
 group by teacher_id;

--Ex 11:
select user_id, count(follower_id) as followers_count
from Followers
group by user_id
order by user_id asc ;

--Ex 12:
select class from Courses
group by class
having count(student) >= 5;

