-- session #1

START TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SELECT SUM(rating) FROM pizzeria;
SELECT SUM(rating) FROM pizzeria;
COMMIT;
SELECT SUM(rating) FROM pizzeria;

-- session #2

START TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE pizzeria SET rating = 5.0 WHERE name = 'Pizza Hut';
COMMIT;
SELECT SUM(rating) FROM pizzeria;