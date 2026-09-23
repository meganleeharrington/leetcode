--185. Department Top Three Salaries

with e as (select id
    ,name
    ,salary
    ,departmentId
    ,dense_rank() over (partition by departmentid order by salary desc) as rnk
from employee)

select d.name as Department
    ,e.name as Employee
    ,Salary
from e
left join department as d
on e.departmentid = d.id
where rnk <= 3

--https://leetcode.com/problems/department-top-three-salaries/submissions/2141916243
