# Write your MySQL query statement below
select query_name,Round(avg(rating/position),2) as quality ,
 
 ROUND(100 * AVG(IF(rating < 3, 1, 0)), 2) AS poor_query_percentage
 from Queries
 WHERE
    query_name IS NOT NULL
 group by query_name