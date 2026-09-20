--1633. Percentage of Users Attended a Contest

WITH u as (
    SELECT COUNT(*) as total
    FROM users
)

SELECT
    contest_id
    ,ROUND(COUNT(*) / total * 100, 2) as percentage
FROM register r
CROSS JOIN u
GROUP BY 1
ORDER BY percentage DESC, contest_id 

--https://leetcode.com/problems/percentage-of-users-attended-a-contest/submissions/1981923099
