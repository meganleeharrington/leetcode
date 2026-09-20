--1789. Primary Department for Each Employee

select employee_id
    ,department_id
from employee
where primary_flag = 'Y'
union
select employee_id
    ,department_id
from employee
group by 1
having count(*) = 1

--https://leetcode.com/problems/primary-department-for-each-employee/submissions/2062210978
