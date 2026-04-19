# Write your MySQL query statement below
select 
q.query_name,
round(avg(q.rating/q.position),2) as quality, 
-- round((select count(rating) from queries where rating < 3 and q.query_name  = query_name)/(select count(rating) from queries where q.query_name  = query_name)*100,2) as poor_query_percentage

round(
    sum(
        case 
        when q.rating<3 then 1 else 0 end
    )*100/count(*),
    2
)
as poor_query_percentage
from queries as q
group by query_name