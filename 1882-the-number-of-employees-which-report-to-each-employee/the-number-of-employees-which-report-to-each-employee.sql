# Write your MySQL query statement below
select 
    e1.employee_id,
    e1.name,
    (select count(*) from employees as e where e.reports_to = e1.employee_id) as reports_count,
    (select round(avg(e.age)) from employees as e where e.reports_to = e1.employee_id) as average_age
    from employees as e1 
    cross join employees as e2
    on e1.employee_id = e2. reports_to
group by e1.employee_id order by e1.employee_id
