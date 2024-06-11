# Write your MySQL query statement below
select employee_id 
from employees e
where manager_id is not null and manager_id  not in (SELECT employee_id FROM employees)and salary < 30000
order by employee_id 