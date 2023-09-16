# Write your MySQL query statement below
(select u.name as results from movierating m left join users u
on u.user_id=m.user_id
group by m.user_id
order by count(rating) desc, u.name asc
limit 1)

union all

(select m1.title as results from movierating m left join movies m1
on m.movie_id=m1.movie_id
WHERE m.created_at LIKE '2020-02%'
group by m.movie_id
order by avg(m.rating) desc, m1.title asc
limit 1);

# Write your MySQL query statement below
(SELECT name results
FROM `Users` U, `MovieRating` MR
WHERE U.user_id = MR.user_id
GROUP BY U.user_id
ORDER BY COUNT(MR.user_id) DESC, name ASC LIMIT 1)
UNION ALL
(SELECT title results
FROM `Movies` M, `MovieRating` MR
WHERE M.movie_id = MR.movie_id AND created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY M.movie_id
ORDER BY AVG(rating) DESC, title ASC LIMIT 1)