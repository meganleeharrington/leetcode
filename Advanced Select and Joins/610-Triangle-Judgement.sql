--610. Triangle Judgement

select *
    , if((x + y > z and y + z > x and z + x > y),'Yes', 'No') as triangle
from triangle

--https://leetcode.com/problems/triangle-judgement/submissions/2062933780
