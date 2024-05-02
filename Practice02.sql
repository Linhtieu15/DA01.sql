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
WHERE post_date >= '2021/01/01' AND post_date <= '2021/12/31'
GROUP BY user_id
HAVING COUNT(post_id)>= 2 ;
