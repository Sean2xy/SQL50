# Write your MySQL query statement below

# 8-16, before it is 10  2->50  select max(date) date <= 8-16, if null -> 10

# select distinct p1.product_id, ifnull(temp.new_price,10) as price from products as p1
    # left join (select product_id, new_price, change_date
# from Products where (product_id, change_date) in
# (select product_id, max(change_date) from Products p where change_date <= '2019-08-16' group by product_id) ) as temp on p1.product_id = temp.product_id

SELECT DISTINCT product_id, 10 AS price
FROM Products
GROUP BY product_id
having (MIN(change_date)) > '2019-08-16'
UNION
SELECT P.product_id, P.new_price AS price
FROM Products P
INNER JOIN (SELECT product_id, MAX(change_date) AS change_date
FROM Products
WHERE change_date <= '2019-08-16'
GROUP BY product_id) T ON P.product_id = T.product_id AND P.change_date = T.change_date

