SELECT
    pizzeria.name,
    COALESCE(visits.count, 0) + COALESCE(orders.count, 0) AS total_count
FROM pizzeria
LEFT JOIN (
    SELECT
        pizzeria_id,
        count(*) AS count
    FROM person_visits
    GROUP BY pizzeria_id
) AS visits ON visits.pizzeria_id = pizzeria.id
LEFT JOIN (
    SELECT
        menu.pizzeria_id,
        count(*) AS count
    FROM person_order
    JOIN menu ON person_order.menu_id = menu.id
    GROUP BY menu.pizzeria_id
) AS orders ON orders.pizzeria_id = pizzeria.id
ORDER BY total_count DESC, name ASC;