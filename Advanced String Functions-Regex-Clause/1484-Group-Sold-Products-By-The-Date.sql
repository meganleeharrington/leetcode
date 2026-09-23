--1484. Group Sold Products By The Date

select sell_date
    ,count(distinct product) as num_sold
    ,group_concat(DISTINCT product order by product asc SEPARATOR ',') as products
from activities
group by sell_date

--https://leetcode.com/problems/group-sold-products-by-the-date/submissions/2062951652
