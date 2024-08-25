SELECT person.name
FROM person
    JOIN person_order ON person.id = person_order.person_id
    JOIN menu ON menu.id = person_order.menu_id
WHERE
    gender = 'male'
    AND pizza_name IN (
        'pepperoni pizza',
        'mushroom pizza'
    )
    AND address IN ('Moscow', 'Samara')
ORDER BY person.name DESC;