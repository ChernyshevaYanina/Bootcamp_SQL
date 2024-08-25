SELECT
    COALESCE(person.name, '-') AS person_name,
    person_visit.visit_date,
    COALESCE(pizzeria.name, '-') as pizzeria_name
FROM person
    FULL JOIN (
        SELECT *
        FROM person_visits
        WHERE
            visit_date BETWEEN '2022-01-01' AND '2022-01-03'
    ) person_visit on person.id = person_visit.person_id
    FULL JOIN pizzeria ON pizzeria.id = person_visit.pizzeria_id
ORDER BY person_name, visit_date, pizzeria_name;