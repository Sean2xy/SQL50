# Write your MySQL query statement below

select p.product_id, ifnull(ROUND(SUM(u.units*p.price)/SUM(u.units),2),0) as average_price
from Prices p left join UnitsSold u ON p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date group by p.product_id

# using and instead of where to improve the runtime
