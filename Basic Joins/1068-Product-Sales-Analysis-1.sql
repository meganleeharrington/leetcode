--1068. Product Sales Analysis I

select product_name
    ,year
    ,price
from product
join sales on product.product_id = sales.product_id

--https://leetcode.com/problems/product-sales-analysis-i/submissions/1927889931
