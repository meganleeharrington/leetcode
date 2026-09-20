--596. Classes With at Least 5 Students

select class
from courses
group by class
having count(student) >= 5

--https://leetcode.com/problems/classes-with-at-least-5-students/submissions/2062147986
