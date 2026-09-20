--1174. Immediate Food Delivery II

with t as (select delivery_id
    ,customer_id
    ,order_date
    ,customer_pref_delivery_date
    ,rank() over(partition by customer_id order by order_date asc) as rnk
from delivery)

select ROUND(SUM(if(order_date = customer_pref_delivery_date, 1, 0)) / COUNT(delivery_id) * 100,2) as immediate_percentage
from t
where rnk = 1

--https://leetcode.com/problems/immediate-food-delivery-ii/submissions/2141702050
