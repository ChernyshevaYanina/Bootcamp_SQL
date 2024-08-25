INSERT INTO
    person_order(
        id,
        person_id,
        menu_id,
        order_date
    )
SELECT (
        SELECT MAX(id)
        FROM
            person_order
    ) + generate_series,
    person.id AS person_id, (
        SELECT id
        FROM menu
        WHERE
            pizza_name = 'greek pizza'
        LIMIT
            1
    ) AS menu_id,
    '2022-02-25' AS order_date
FROM person
    JOIN generate_series(
        1, (
            SELECT count(*)
            FROM
                person
        )
    ) ON generate_series = person.id
