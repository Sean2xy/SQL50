# Write your MySQL query statement below
# select employee_id, name, reports_count, average_age

select e2.employee_id, e2.name, count(e1.reports_to) as reports_count, round(avg(e1.age))
as average_age from Employees e1 inner join Employees e2 on e1.reports_to = e2.employee_id group by e2.employee_id
order by e2.employee_id