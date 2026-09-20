--570. Managers With At Least 5 Direct Reports

with m as (
    select managerid
        ,count(*) as count
    from employee
    group by managerid
    having count >= 5 
)

select name
from employee e
join m
on e.id = m.managerid

--https://leetcode.com/problems/managers-with-at-least-5-direct-reports/submissions/2066200012
