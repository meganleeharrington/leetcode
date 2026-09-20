--550. Game Play Analysis IV

with t as (select player_id
    ,device_id
    ,event_date
    ,games_played
    ,rank() over (partition by player_id order by event_date asc) as rnk
from activity)

select ROUND(SUM(if(t1.event_date = date_add(t2.event_date, INTERVAL -1 DAY), 1, 0))/COUNT(distinct t1.player_id), 2) as fraction
from t as t1
left join t as t2
on t1.player_id = t2.player_id and t1.rnk = t2.rnk - 1
where t1.rnk = 1

--https://leetcode.com/problems/game-play-analysis-iv/submissions/2141714749
