# Write your MySQL query statement below
select contest_id , round(100*(count(r.user_id)/(select count(user_id )from users)),2) as percentage
from register r
group by contest_id
order by percentage desc , contest_id

