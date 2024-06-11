# Write your MySQL query statement below
select employee_id ,department_id
from (
    select employee_id,department_id,primary_flag,
    count(employee_id) over(partition by employee_id) as emp
    from employee
) a
where primary_flag='Y' or emp=1



