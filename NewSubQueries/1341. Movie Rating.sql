(select u.name as results from MovieRating mv left join Users u on mv.user_id=u.user_id group by mv.user_id order by count(mv.user_id) desc,u.name asc limit 1)
union all
(select m.title as results from MovieRating mv left join movies m on mv.movie_id=m.movie_id where mv.created_at like '2020-02%' group by m.movie_id
 order by avg(mv.rating) desc, m.title asc limit 1)