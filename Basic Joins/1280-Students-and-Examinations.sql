--1280. Students and Examinations

with e as (
    select student_id
    ,subject_name
    ,count(*) as attended_exams
    from examinations
    group by 1,2
)
select stu.student_id
    ,student_name
    ,sub.subject_name
    ,ifnull(attended_exams, 0) as attended_exams
from students stu
cross join subjects sub
left join e
on stu.student_id = e.student_id and sub.subject_name = e.subject_name
order by student_id, subject_name

--https://leetcode.com/problems/students-and-examinations/submissions/2062898663
