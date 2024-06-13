# Write your MySQL query statement below
select round(sum(tiv_2016),2) as tiv_2016 
from (SELECT pid,tiv_2015 , tiv_2016, lat, lon
FROM insurance
GROUP BY lat, lon
HAVING COUNT(*) = 1) as temp
WHERE tiv_2015 IN (
        SELECT tiv_2015
        FROM insurance
        GROUP BY tiv_2015
        HAVING COUNT(tiv_2015) > 1
    )









