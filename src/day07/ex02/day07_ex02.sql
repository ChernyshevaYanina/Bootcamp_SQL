 (
    SELECT
        pizzeria.name,
        count(*) AS count,
        'visit' AS action_type
    FROM person_visits
        JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
    GROUP BY pizzeria.name
    ORDER BY action_type DESC
    LIMIT 3
)
UNION (
    SELECT
        pizzeria.name,
        count(*) AS count,
        'order' AS action_type
    FROM person_order
        inner JOIN menu ON person_order.menu_id = menu.id
        inner JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
    GROUP BY pizzeria.name
    ORDER BY action_type DESC
    LIMIT 3
)
ORDER BY action_type, count DESC
