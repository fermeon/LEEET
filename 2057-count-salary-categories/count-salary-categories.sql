# Write your MySQL query statement below
select "Low Salary" as Category,
        count(income) as accounts_count
from Accounts
where income<20000
union all
select "Average Salary" as Category,
        count(income) as accounts_count
from Accounts
where income between 20000 and 50000
union all
select "High Salary" as Category,
        count(income) as accounts_count
from Accounts
where income>50000
