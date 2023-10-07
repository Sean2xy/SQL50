# Write your MySQL query statement below  CASE: count = 1, ->1,3   count = >1 &&  flag = y ->2,4
select employee_id, department_id from Employee group by employee_id having count(department_id)=1
union
select employee_id,department_id from Employee where primary_flag = 'Y'


# Write your MySQL query statement below

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y' OR (employee_id IN
(SELECT employee_id
FROM Employee GROUP BY employee_id HAVING COUNT(department_id)=1));
