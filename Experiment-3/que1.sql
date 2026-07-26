
select department, SUM(case when marks>80 then 1 else 0 end) as Dept_HighScore_Count 
FROM student
group by department;