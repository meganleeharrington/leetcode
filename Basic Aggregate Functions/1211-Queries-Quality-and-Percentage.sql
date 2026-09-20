--1211. Queries Quality and Percentage

with poor as(
    select count(*) as poor
    ,query_name
    from queries
    where rating < 3
    group by query_name
)

select queries.query_name
    ,round(sum(rating/position)/count(*),2) as quality
    ,ifnull(round(poor/count(*)*100,2),0) as poor_query_percentage
from queries
left join poor
on queries.query_name = poor.query_name
group by query_name

--https://leetcode.com/problems/queries-quality-and-percentage/submissions/2062132076
