# Write your MySQL query statement below
select  reports_to as employee_id ,(SELECT name FROM employees WHERE employee_id = e.reports_to)as name ,count(reports_to) as reports_count,ROUND(AVG(age), 0) as average_age
from employees e
group by reports_to 
having count(reports_to)>0 
order by employee_id asc