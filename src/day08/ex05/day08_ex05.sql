-- session #1

START TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT SUM(rating) FROM pizzeria;
SELECT SUM(rating) FROM pizzeria;
COMMIT;
SELECT SUM(rating) FROM pizzeria;

-- session #2

START TRANSACTION ISOLATION LEVEL READ COMMITTED;
UPDATE pizzeria SET rating = 1.0 WHERE name = 'Pizza Hut';
COMMIT;
SELECT SUM(rating) FROM pizzeria;