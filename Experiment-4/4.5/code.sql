
-- link  -->  https://www.codechef.com/learn/course/sql-intermediate/SQ00BS01/problems/ASQL01F?tab=statement


-- 1. Employee and Manager Names (SELF JOIN)
SELECT e1.employee_name AS Employee, e2.employee_name AS Manager
FROM employees e1
LEFT JOIN employees e2 ON e1.manager_id = e2.employee_id;

-- 2. Every Possible Combination (CROSS JOIN)
SELECT c.customer_name, p.product_name
FROM customers c
CROSS JOIN products p;
