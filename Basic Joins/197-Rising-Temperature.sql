--197. Rising Temperature

SELECT w1.id
FROM weather as w1
LEFT JOIN weather as w2
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature

--https://leetcode.com/problems/rising-temperature/submissions/1981813923
