# Write your MySQL query statement below
select date_format(trans_date,'%Y-%m') AS month,
country,count(amount) as trans_count,
count(CASE WHEN state = 'approved' THEN 1 END) as approved_count,
sum(amount) as trans_total_amount,
sum(if(state='approved',amount,0)) as approved_total_amount

from Transactions
group by month,country
