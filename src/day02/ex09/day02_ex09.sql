SELECT person.name AS name
FROM person
    JOIN person_order ON person.id = person_order.person_id
    JOIN menu ON menu.id = person_order.menu_id
WHERE
    menu.pizza_name = 'pepperoni pizza'
    AND person.gender = 'female'
INTERSECT
SELECT person.name AS name
FROM person
    JOIN person_order ON person.id = person_order.person_id
    JOIN menu ON menu.id = person_order.menu_id
WHERE
    menu.pizza_name = 'cheese pizza'
    AND person.gender = 'female'
ORDER BY name;
