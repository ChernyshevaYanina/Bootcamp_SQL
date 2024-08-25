SELECT pizzeria.name
FROM menu
    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
    JOIN person_visits ON menu.pizzeria_id = person_visits.pizzeria_id
    JOIN person ON person.id = person_visits.person_id
WHERE
    price < 800
    AND person.name = 'Dmitriy'
    AND visit_date = '2022-01-08'