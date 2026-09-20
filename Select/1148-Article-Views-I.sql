--1148. Article Views I

select author_id as id
from views
where author_id = viewer_id
group by id
order by id

--https://leetcode.com/problems/article-views-i/submissions/1911618654
