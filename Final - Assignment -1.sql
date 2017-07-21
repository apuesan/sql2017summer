-- 1 Which destination in the flights database is the furthest distance away? 

SELECT
dest, distance 
FROM flights 
ORDER BY distance DESC LIMIT 1;

-- 2a  What are the different number of engines in the planes table? 

SELECT
distinct engines 
FROM planes;

-- 2b  For each number of engines, which aircraft have the most number seats?  

select 
engines, model, max(seats) 
from planes 
group by engines;


-- 3 show number of flights

select count(*) as 'numberofflights' 
from flights;

-- 4 show number of flights by carrier

select carrier as 'airline', count(*) as 'numberofflights' 
from flights 
group by carrier;

-- 5 show all of the airlines, by number of flights in descending order

select carrier as 'airline', count(*) as 'numberofflights' 
from flights 
group by carrier 
order by numberofflights desc;

-- 6 show only the top 5 airlines, by number of flights in descending order

select carrier as 'airline', count(*) as 'numberofflights' 
from flights 
group by carrier 
order by numberofflights desc limit 5;


-- 7 show only the top 5 airlines, by number of flights > 1000 ordered by number of flights in descending order

select carrier as 'airline', count(*) as 'numberofflightsmorethan1000miles' 
from flights 
where distance >= 1000 
group by carrier 
order by numberofflightsmorethan1000miles desc limit 5;


-- 8 create a question from flights database: "how many flights has each plane (based on tail number) taken sorted in descending order, show only top 10. 

select tailnum, count(*) as 'numberofflights'
from flights
group by tailnum
order by numberofflights desc limit 10

