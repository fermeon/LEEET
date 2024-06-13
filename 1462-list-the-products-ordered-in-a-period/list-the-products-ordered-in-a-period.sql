# Write your MySQL query statement below
select a.product_name,sum(O.unit) as unit
from Orders O
left join Products a
on a.product_id=O.product_id
where order_date like  '2020-02-%'
group by a.product_id
having sum(O.unit)>99
