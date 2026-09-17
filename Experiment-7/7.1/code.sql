CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    amount NUMERIC
);

INSERT INTO orders VALUES (101, 15000);
INSERT INTO orders VALUES (102, 5000);
INSERT INTO orders VALUES (103, 12000);
INSERT INTO orders VALUES (104, 8000);

DO $$
DECLARE
    r_order RECORD;
BEGIN
    FOR r_order IN
        SELECT amount
        FROM orders
    LOOP
        IF r_order.amount > 10000 THEN
            RAISE NOTICE 'High Value';
        END IF;
    END LOOP;
END $$ ;


