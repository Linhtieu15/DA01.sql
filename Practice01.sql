-- EX 1: 
select NAME from CITY 
WHERE COUNTRYCODE = 'USA' 
AND POPULATION > 120000;

-- EX 2: 
select * from CITY 
where COUNTRYCODE = 'JPN';

--EX 3: 
 select CITY,STATE  from STATION; 

--Ex 4:
select distinct CITY from STATION
where CITY like 'A%' or  CITY like 'E%' or CITY like 'I%' or CITY like 'O%' or CITY like 'U%';

--Ex 5:
select distinct CITY from station
where CITY like '%a' or CITY like '%e' or CITY like '%i' or CITY like '%o' or CITY like '%u'; 

--Ex 6:
select distinct CITY from STATION
where CITY not like 'A%' and CITY not like 'E%' and CITY not like 'I%' and CITY not like 'O%' and CITY not like 'U%';

--Ex 7:
 select name from Employee
 order by name asc

--Ex 8: 
select name from Employee
where salary > 2000 and months < 10
order by employee_id asc;

--Ex 9:
select product_id from Products
 where low_fats  =  'Y' and recyclable  = 'Y';

--Ex 10:
select name from Customer
where referee_id !=2 or referee_id is NULL;

--Ex 11:
select name,population,area  from World
where area >= 3000000 or population >= 25000000; 

--Ex 12:
select distinct author_id as id from Views
where author_id = viewer_id
order by author_id asc; 

--Ex 13:
SELECT part, assembly_step FROM parts_assembly
where finish_date is NULL and assembly_step	>= 1;

-- Ex 14:
select * from lyft_drivers
where yearly_salary <= 30000 or yearly_salary >= 70000;

-- Ex 15:
select * from uber_advertising
where money_spent > 100000 and year = 2019;
