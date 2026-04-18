# Write your MySQL query statement below
select f.name from Employee as f
cross join Employee as s
on f.id = s.managerId
group by f.id having count(f.id) >= 5
