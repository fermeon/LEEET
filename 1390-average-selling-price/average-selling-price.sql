# Write your MySQL query statement below
select p.product_id,IFNULL(ROUND(sum(units*price)/sum(units),2),0) as average_price
from Prices p
left join UnitsSold U
on p. product_id = U. product_id and U.purchase_date between p.start_date and p.end_date
group by p.product_id


