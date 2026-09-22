--585. Investments in 2016

select ROUND(sum(tiv_2016), 2) as tiv_2016
from insurance
where 
    pid NOT IN (select i1.pid from insurance as i1 join insurance as i2
        on (i1.lat, i1.lon) = (i2.lat, i2.lon) and i1.pid != i2.pid) 
    and tiv_2015 IN (select tiv_2015 from insurance group by 1 having count(*) > 1)

--https://leetcode.com/problems/investments-in-2016/submissions/2148802384
