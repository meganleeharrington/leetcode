--1204. Last Person to Fit in the Bus

with w as (
    select person_name
        ,weight
        ,sum(weight) over (order by turn) as total
        ,turn
    from queue)

select person_name
from w
where total <= 1000
order by total desc limit 1

--https://leetcode.com/problems/last-person-to-fit-in-the-bus/submissions/2141923195
