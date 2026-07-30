
-- link -> https://www.codechef.com/learn/course/sql-intermediate/SQ00BS01/problems/GSQ63?tab=statement


SELECT *
FROM student
JOIN course
ON student.Course_id = course.Course_id;

SELECT *
FROM student
LEFT JOIN course
ON student.Course_id = course.Course_id;