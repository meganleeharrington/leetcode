--1251. Average Selling Price

select p.product_id
    ,IFNULL(ROUND(SUM(u.units*p.price)/SUM(u.units),2),0) as average_price
from prices p
left join unitssold u
on p.product_id = u.product_id and u.purchase_date >= p.start_date and u.purchase_date <= p.end_date
group by product_id

--https://leetcode.com/problems/average-selling-price/submissions/2062918691
