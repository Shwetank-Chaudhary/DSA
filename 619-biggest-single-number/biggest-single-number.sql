# Write your MySQL query statement below
select 
    case
        when (select num from mynumbers group by num having count(num) = 1 order by num desc limit 1) is not null       then         (select num from mynumbers group by num having count(num) = 1 order by num desc limit 1)
        else 
            null 
    end as num;
