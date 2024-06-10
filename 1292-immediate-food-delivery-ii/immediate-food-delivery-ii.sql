# Write your MySQL query statement below
select round(100*(count(CASE WHEN DATEDIFF(order_date, customer_pref_delivery_date)=0 THEN 1 END))/COUNT(customer_id),2) AS immediate_percentage
FROM Delivery
WHERE (customer_id,order_date) in 
(select customer_id,min(order_date)
from Delivery
group by customer_id)
