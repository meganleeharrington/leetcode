--176. Second Highest Salary

with t as (
    select id
        ,salary
        ,dense_rank() over (order by salary desc) as rnk
    from employee
)

select MAX(if(rnk = 2, salary, null)) as SecondHighestSalary
from t

--https://leetcode.com/problems/second-highest-salary/submissions/2148814113
