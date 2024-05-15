-- Ex 1: 
select 
  sum(case when device_type = 'laptop' then 1
  else 0
  end) as laptop_views,
  sum(case when device_type in ('tablet','phone') then 1
  else 0
  end) as mobile_views
from viewership;  

--Ex 2:
select x,y,z, 
case 
    when x + y > z AND x + z > y AND y + z > x then 'Yes'
    else 'No'
end as triangle
FROM Triangle;

-- Ex 3: 
