--1341. Movie Rating

(select name as results
from movierating as mr
left join users as u on mr.user_id = u.user_id
group by 1
order by COUNT(movie_id) desc, name asc
limit 1)

union all

(select title as results
from movierating as mr
left join movies as m on mr.movie_id = m.movie_id
where date_format(created_at, '%Y-%m') = '2020-02'
group by 1
order by avg(rating) desc, title asc
limit 1)

--https://leetcode.com/problems/movie-rating/submissions/2141789126
