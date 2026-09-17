
    -- create a stored procedure that takes an emp_id, emp_name, emp_salary, dept
        -- task: 1. pass the argument via a stored procedure and add data in a main table 
        -- 2. add data in main table only if the emp_id is odd


CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_salary NUMERIC(10,2),
    dept VARCHAR(50)
);


CREATE OR REPLACE PROCEDURE add_employee(
    p_emp_id INT,
    p_emp_name VARCHAR(100),
    p_emp_salary NUMERIC(10,2),
    p_dept VARCHAR(50)
)
LANGUAGE plpgsql
AS $$
BEGIN

    IF p_emp_id % 2 <> 0 THEN

        INSERT INTO employee (
            emp_id,
            emp_name,
            emp_salary,
            dept
        )
        VALUES (
            p_emp_id,
            p_emp_name,
            p_emp_salary,
            p_dept
        );

        RAISE NOTICE 'Employee inserted successfully';

    ELSE

        RAISE NOTICE 'Employee NOT inserted because emp_id is even';

    END IF;

END;
$$;

CALL add_employee(
    101,
    'Amit Sharma',
    50000,
    'IT'
);

CALL add_employee(
    102,
    'Rahul Verma',
    60000,
    'HR'
);

CALL add_employee(
    103,
    'Priya Singh',
    55000,
    'Finance'
);


SELECT * FROM employee;