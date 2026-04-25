# Write your MySQL query statement below
select 
    p1.product_id,
    coalesce(
        (
            select new_price from products where products.product_id  = p1.product_id 
            and change_date <= Date('2019-08-16') order by change_date desc limit 1
        ),10)
    as price
from products p1
-- right join products as p2
-- on p1.product_id =  p2.product_id
-- and p1.change_date <= Date('2019-08-16')
group by p1.product_id 