SELECT person.address, pizzeria.name, COUNT(*)
FROM person_order
JOIN person ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id 
GROUP BY person.address, pizzeria.name
ORDER BY person.address, pizzeria.name;