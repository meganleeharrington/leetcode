--1164. Product Price At A Given Date

with p as (select distinct product_id
from products),

d as (select product_id
    ,max(change_date) as max_date
from products
where change_date <= '2019-08-16'
group by 1),

j as (select p.product_id
    ,max_date
from p
left join d on p.product_id = d.product_id)

select j.product_id
    ,ifnull(new_price, 10) as price
from j
left join products as p on j.product_id = p.product_id and change_date = max_date

--https://leetcode.com/problems/product-price-at-a-given-date/submissions/2141755869
