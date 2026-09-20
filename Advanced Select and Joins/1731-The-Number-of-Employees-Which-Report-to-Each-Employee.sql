--1731. The Number of Employees Which Report to Each Employee

with t as (
    select reports_to as manager
    ,employee_id as employee
    ,age as employee_age
    from employees
)

select employee_id
    ,name
    ,count(employee) as reports_count
    ,round(avg(employee_age)) as average_age
from employees e
left join t
on e.employee_id = t.manager
group by manager
having reports_count > 0
order by employee_id

--https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/submissions/2062205782
