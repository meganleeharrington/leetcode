--1907. Count Salary Categories

select 'High Salary' as category
    ,SUM(if(income > 50000,1,0)) as accounts_count
from accounts

union all

select 'Average Salary' as category
        ,SUM(if(income >= 20000 and income <= 50000,1,0)) as accounts_count
    from accounts

union all

select 'Low Salary' as category
        ,SUM(if(income < 20000,1,0)) as accounts_count
    from accounts

--https://leetcode.com/problems/count-salary-categories/submissions/2141947726
