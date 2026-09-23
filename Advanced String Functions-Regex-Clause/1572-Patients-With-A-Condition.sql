--1527. Patients With a Condition

select *
from patients
where conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'

--https://leetcode.com/problems/patients-with-a-condition/submissions/2062229408
