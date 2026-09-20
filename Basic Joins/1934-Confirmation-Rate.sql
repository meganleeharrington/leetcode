--1934. Confirmation Rate

with c as (
    select user_id
        ,action
        ,count(*) as attempts
    from confirmations
    group by 1,2
),

t as (
select s.user_id
    ,ifnull(attempts,0) as attempts
    ,case
        when action = 'confirmed' then ifnull(c.attempts,0)
        else 0 
    end as confirmed
from signups s
left join c
on s.user_id = c.user_id)

select user_id
    ,round(ifnull(sum(confirmed)/sum(attempts),0),2) as confirmation_rate
from t
group by user_id

--https://leetcode.com/problems/confirmation-rate/submissions/2066195380
