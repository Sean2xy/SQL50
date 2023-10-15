# Write your MySQL query statement below
# select sell_date, count(sell_date) as num_sold, products from Activities where sell_date in (select sell_date, sum(product) as products from Activities group by sell_date)

select sell_date, count(distinct product) as num_sold, group_concat(distinct product) as products
from Activities group by sell_date order by sell_date asc;