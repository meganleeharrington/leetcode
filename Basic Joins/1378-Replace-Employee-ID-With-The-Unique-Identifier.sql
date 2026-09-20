--1378. Replace Employee ID With The Unique Identifier

select unique_id, name
from employees
left join employeeuni on employees.id = employeeuni.id

--https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/submissions/1927888916