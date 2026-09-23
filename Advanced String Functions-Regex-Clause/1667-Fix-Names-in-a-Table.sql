--1667. Fix Names in a Table

SELECT user_id
    ,CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2))) as name
FROM users
ORDER BY user_id

--https://leetcode.com/problems/fix-names-in-a-table/submissions/2062947157
