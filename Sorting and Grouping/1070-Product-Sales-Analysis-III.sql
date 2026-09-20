--1070. Product Sales Analysis III

with m as (
    select product_id
        ,year
        ,quantity
        ,price
        ,rank() over (partition by product_id order by year asc) as rnk
    from sales
)

select product_id
    ,year as first_year
    ,quantity
    ,price
from m
where rnk = 1

--https://leetcode.com/problems/product-sales-analysis-iii/submissions/2141723285
