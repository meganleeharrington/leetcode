--1045. Customers Who Bought All Products

with c as (select customer_id
    ,count(distinct product_key) as cnt
from customer
group by 1)

select customer_id
from c
cross join (select count(distinct product_key) as total_cnt
from product) as total
where cnt = total_cnt

--https://leetcode.com/problems/customers-who-bought-all-products/submissions/2141731033
