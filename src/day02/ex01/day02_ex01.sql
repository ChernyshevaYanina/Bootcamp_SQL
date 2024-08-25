SELECT
    missing_dates.date AS missing_date
FROM (
        SELECT *
        FROM person_visits
        WHERE
            person_id = 1
            OR person_id = 2
    ) AS person_visits_filtered
    RIGHT JOIN (
        SELECT
            generate_series(
                '2022-01-01',
                '2022-01-10',
                interval '1 day'
            ) :: date AS date
    ) AS missing_dates ON person_visits_filtered.visit_date = missing_dates.date
WHERE
    person_visits_filtered.visit_date IS NULL
ORDER BY missing_date ASC;