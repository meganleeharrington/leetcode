--619. Biggest Single Number

select max(num) as num
from (
    select num
    from mynumbers
    group by num
    having count(*) = 1) as t

--https://leetcode.com/problems/biggest-single-number/submissions/2062928355
