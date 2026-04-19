# Write your MySQL query statement below
select contest_id, round(
    count(contest_id)/(select count(user_id) from users) * 100,
    2
) as percentage
from users 
right join Register
on Register.user_id = Users.user_id
group by contest_id 
order by percentage desc , contest_id asc
