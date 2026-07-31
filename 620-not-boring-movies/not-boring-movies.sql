# Write your MySQL query statement below
select id,movie,description,rating 
from Cinema
where id not in(2,4,6,8,10) and description != "boring" 
order by rating desc;