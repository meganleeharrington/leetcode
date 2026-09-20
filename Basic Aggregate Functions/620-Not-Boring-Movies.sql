--620. Not Boring Movies

SELECT *
FROM cinema
WHERE id % 2 = 1 AND description != 'boring'
ORDER BY rating DESC

--https://leetcode.com/problems/not-boring-movies/submissions/1981909555
