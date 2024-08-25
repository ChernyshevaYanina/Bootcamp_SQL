SELECT
    person.name,
    menu.pizza_name,
    menu.price,
    menu.price - ROUND(
        menu.price * person_discounts.discount / 100
    ) AS discaunt_price,
    pizzeria.name AS pizzeria_name
FROM person_discounts
    JOIN person ON person_discounts.person_id = person.id
    JOIN pizzeria ON person_discounts.pizzeria_id = pizzeria.id
    JOIN menu ON menu.pizzeria_id = pizzeria.id
ORDER BY
    person.name,
    pizza_name;