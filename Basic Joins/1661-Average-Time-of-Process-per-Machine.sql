--1661. Average Time of Process per Machine

SELECT a.machine_id
    ,ROUND(AVG(b.timestamp - a.timestamp),3) as processing_time
FROM activity a
JOIN activity b
    ON a.machine_id = b.machine_id
    AND a.process_id = b.process_id
    AND a.activity_type = 'start'
    AND b.activity_type = 'end'
GROUP BY 1

--https://leetcode.com/problems/average-time-of-process-per-machine/submissions/1981858277
