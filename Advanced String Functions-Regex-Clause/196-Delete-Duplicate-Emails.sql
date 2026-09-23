--196. Delete Duplicate Emails

DELETE p2
FROM Person p1
JOIN Person p2
ON p1.Email = p2.Email
where p1.id< p2.id;

--https://leetcode.com/problems/delete-duplicate-emails/submissions/2148823267
