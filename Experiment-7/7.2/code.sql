CREATE TABLE staff (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary NUMERIC
);

INSERT INTO staff VALUES (1, 'Alice Smith', 150000);
INSERT INTO staff VALUES (2, 'Bob Jones', 120000);
INSERT INTO staff VALUES (3, 'Charlie Brown', 95000);
INSERT INTO staff VALUES (4, 'Diana Prince', 135000);
INSERT INTO staff VALUES (5, 'Ethan Hunt', 110000);
INSERT INTO staff VALUES (6, 'Fiona Glenanne', 80000);

DO $$
DECLARE
    r_staff RECORD;
BEGIN

    FOR r_staff IN
        SELECT name, salary
        FROM staff
        ORDER BY salary DESC
        LIMIT 5
    LOOP

        RAISE NOTICE 'Name: % | Salary: %',
            r_staff.name,
            r_staff.salary;

    END LOOP;

END $$;