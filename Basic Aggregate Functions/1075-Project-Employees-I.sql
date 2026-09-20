--1075. Project Employees I

SELECT 
    project_id
    ,ROUND(AVG(experience_years),2) as average_years
FROM project p 
LEFT JOIN employee e
    ON p.employee_id = e.employee_id
GROUP BY 1

--https://leetcode.com/problems/project-employees-i/submissions/1981915012
