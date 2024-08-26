CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10)
RETURNS TABLE (num BIGINT)
AS $$
WITH RECURSIVE fib(num, b) AS (
    SELECT 0 AS num, 1 AS b
    UNION ALL
    SELECT b, num + b FROM fib WHERE b < pstop)
            SELECT num
            FROM fib;
            $$ LANGUAGE SQL;


SELECT * FROM fnc_fibonacci(10000);
SELECT * FROM fnc_fibonacci();
