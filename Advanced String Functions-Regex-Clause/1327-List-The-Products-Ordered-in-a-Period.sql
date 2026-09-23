--1327. List the Products Ordered in a Period

select product_name
    ,sum(unit) as unit
from orders o
left join products p
  on o.product_id = p.product_id
where order_date >= '2020-02-01' and order_date <= '2020-02-29'
group by product_name
having unit >= 100

--https://leetcode.com/problems/list-the-products-ordered-in-a-period/submissions/2062861591
