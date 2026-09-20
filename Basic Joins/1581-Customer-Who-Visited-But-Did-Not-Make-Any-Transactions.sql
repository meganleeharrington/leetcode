--1581. Customer Who Visited But Did Not Make Any Transactions

SELECT customer_id
    , COUNT(*) as count_no_trans
FROM visits v
    LEFT JOIN transactions t
    ON v.visit_id = t.visit_id
WHERE
    t.visit_id IS NULL
GROUP BY
    customer_id

--https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/submissions/1981787462
