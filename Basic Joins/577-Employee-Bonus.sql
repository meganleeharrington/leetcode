--577. Employee Bonus

SELECT 
    name
    ,bonus
FROM employee e
    LEFT JOIN bonus b
    ON e.empId = b.empId
WHERE bonus < 1000 or ISNULL(bonus)

--https://leetcode.com/problems/employee-bonus/submissions/1981871578
