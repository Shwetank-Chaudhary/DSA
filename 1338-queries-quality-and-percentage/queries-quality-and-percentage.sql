# Write your MySQL query statement below
select 
q.query_name,
round(avg(q.rating/q.position),2) as quality, 
-- (select count(rating) from queries WHERE q.query_name  = query_name) as total,
-- (select count(rating) from queries where rating<3 and q.query_name  = query_name) as le3,
round((select count(rating) from queries where rating < 3 and q.query_name  = query_name)/(select count(rating) from queries where q.query_name  = query_name)*100,2) as poor_query_percentage
from queries as q
group by query_name