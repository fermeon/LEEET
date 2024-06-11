(SELECT U.name AS results
FROM Users U
left JOIN MovieRating MR ON U.user_id = MR.user_id
GROUP BY MR.user_id
ORDER BY COUNT(MR.user_id) DESC,
         U.name
LIMIT 1)

UNION ALL 

(SELECT title AS results
FROM Movies M
left JOIN MovieRating MR ON M.movie_id = MR.movie_id 
where MR.created_at like '2020-02%'
GROUP BY MR.movie_id
ORDER BY AVG(rating) DESC,
M.title
LIMIT 1)
