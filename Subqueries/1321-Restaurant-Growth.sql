--1321. Restaurant Growth

with a as (select visited_on
    ,sum(amount) as amount
from customer
group by 1),

b as (select visited_on
    ,sum(amount) over (order by visited_on rows between 6 preceding and current row) as amount
    ,round(avg(amount) over (order by visited_on rows between 6 preceding and current row),2) as average_amount
from a)

select *
from b
where visited_on >= (select date_add(min(visited_on), INTERVAL 6 day) from b)

--https://leetcode.com/problems/restaurant-growth/submissions/2141809689
