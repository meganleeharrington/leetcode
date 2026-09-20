--180. Consecutive Numbers

select distinct l1.num as ConsecutiveNums
from logs as l1
left join logs as l2 on l1.id = l2.id - 1
left join logs as l3 on l1.id = l3.id - 2
where l1.num = l2.num and l2.num = l3.num

--https://leetcode.com/problems/consecutive-numbers/submissions/2141740433
