--584. Find Customer Referee

select name
from customer
where referee_id != 2 OR referee_id IS NULL

--https://leetcode.com/problems/find-customer-referee/submissions/1911614756