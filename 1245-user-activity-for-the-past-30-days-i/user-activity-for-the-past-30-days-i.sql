# Write your MySQL query statement below
Select 
activity_date as day,
count(distinct user_id) as active_users
from Activity
group by day 
having datediff(Date("2019-07-27"),day) between 0 and 29