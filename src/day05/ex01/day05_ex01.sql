SET enable_seqscan = OFF;

EXPLAIN ANALYSE
SELECT
    pizza_name,
    pizzeria.name as pizzeria_name
FROM menu
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id;