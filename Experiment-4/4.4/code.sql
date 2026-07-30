
--   link --> https://www.codechef.com/learn/course/sql-intermediate/SQ00BS01/problems/ASQL01B?tab=solution 


Copy Solution to IDE
SELECT *
FROM student
FULL OUTER JOIN course
ON student.Course_id = course.Course_id;