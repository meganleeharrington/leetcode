--1517. Find Users With Valid Emails

SELECT user_id, name, mail
FROM Users
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9_.-]*\\@leetcode\\.com$', 'c');

--https://leetcode.com/problems/find-users-with-valid-e-mails/submissions/2148818645
