SELECT
    person.name,
    menu.pizza_name,
    pizzeria.name
FROM person
    JOIN person_order ON person.id = person_order.person_id
    JOIN menu ON person_order.menu_id = menu.id
    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY
    person.name ASC,
    menu.pizza_name ASC,
    pizzeria.name ASC;