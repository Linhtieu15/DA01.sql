-- Ex 1: 
select COUNTRY.CONTINENT, 
floor(avg(CITY.POPULATION))
from CITY 
inner join COUNTRY 
on COUNTRY.CODE = CITY.COUNTRYCODE
Group by COUNTRY.CONTINENT;

-- Ex 2: 
select round(1.0*
  sum(case when t.signup_action = 'Confrimed' then 1 else 0 end)
  /count(distinct e.user_id),2) as comfirm_rate
from emails as e
left join texts as t 
on e.email_id = t.email_id; 

--Ex 3:
SELECT 
    a.age_bucket,
    ROUND(SUM(CASE WHEN b.activity_type = 'send' THEN b.time_spent ELSE 0 END) * 100.0 / 
          SUM(CASE WHEN b.activity_type IN ('send', 'open') THEN b.time_spent ELSE 0 END), 2) AS send_perc,
    ROUND(SUM(CASE WHEN b.activity_type = 'open' THEN B.time_spent ELSE 0 END) * 100.0 / 
          SUM(CASE WHEN b.activity_type IN ('send', 'open') THEN b.time_spent ELSE 0 END), 2) AS open_perc
FROM 
    age_breakdown as a
INNER JOIN 
    activities as b
ON a.user_id = b.user_id
WHERE 
    b.activity_type IN ('send', 'open')
GROUP BY 
    a.age_bucket;

--Ex 4: 
SELECT customer_id
FROM customer_contracts as a
left join products as b
on a.product_id = b.product_id
group by customer_id
having count(distinct product_category) = 3;

-- Ex 5: 
SELECT e1.employee_id, 
       e1.name, 
       Count(e2.reports_to)  AS reports_count, 
       Round(Avg(e2.age),0) AS average_age 
FROM   employees as e1 
INNER JOIN employees as e2 
ON e1.employee_id = e2.reports_to 
GROUP  BY e1.employee_id, e1.NAME 
ORDER  BY e1.employee_id ASC; 

-- Ex 6: 
select a.product_name, 
sum(unit) as unit
from Products as a
left join Orders as b
on a.product_id = b.product_id
where b.order_date between '2020-02-01' and '2020-02-29'
group by a.product_id
having sum(unit) >= 100

-- Ex 7: 
SELECT a.page_id
FROM pages as a
left join page_likes as b 
on a.page_id = b.page_id
where b.liked_date is NULL
order by a.page_id asc;
