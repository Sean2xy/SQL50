# Write your MySQL query statement below

select t.employee_id from (select employee_id, manager_id from Employees
where salary <30000) t where manager_id not in (select employee_id from Employees) order by t.employee_id


    # select employee_id from Employees where salary <30000 and manager_id not in (select employee_id from Employees)order by employee_id
