-- session #1

BEGIN;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;

-- session #2

SELECT * FROM pizzeria WHERE name = 'Pizza Hut';