--602. Friend Requests II: Who Has the Most Friends

with t as (select requester_id as id
    ,accepter_id as num
from requestaccepted

union all

select accepter_id as id
    ,requester_id as num
from requestaccepted)

select id
    ,count(num) as num
from t
group by id
order by num desc
limit 1

--https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/submissions/2141825628
