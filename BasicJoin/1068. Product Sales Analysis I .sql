# Write your MySQL query statement below
# where >>>>>>>> join
SELECT p.product_name,s.year,s.price from Sales s,Product p where p.product_id = s.product_id