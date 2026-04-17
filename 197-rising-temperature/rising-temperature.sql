# Write your MySQL query statement below
select s.id as Id from Weather as f
cross join 
Weather as s
where datediff(s.recordDate,f.recordDate) = 1
and s.temperature > f.temperature
;