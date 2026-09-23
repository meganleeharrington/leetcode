--1978. Employees Whose Manager Left the Company

select e1.employee_id
from employees e1
left join employees e2
    on e1.manager_id = e2.employee_id
where e1.salary < 30000 and e1.manager_id is not NULL and e2.employee_id is NULL
order by e1.employee_id

--https://leetcode.com/problems/employees-whose-manager-left-the-company/submissions/2062944554
