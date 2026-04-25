# Write your MySQL query statement below
select 
    person_name
    from
        (select 
            person_name,
            @tw:= @tw + weight as tw
        from queue, (select @tw := 0) as init order by turn ) as t
    where t.tw<=1000
    order by t.tw desc limit 1
