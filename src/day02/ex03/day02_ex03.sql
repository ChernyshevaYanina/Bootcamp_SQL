WITH missing_dates AS (
        SELECT
            generate_series(
                '2022-01-01',
                '2022-01-10',
                interval '1 day'
            ) :: date AS missing_date
    )
SELECT
    missing_dates.missing_date
FROM (
        SELECT *
        FROM person_visits
        WHERE
            person_id = 1
            OR person_id = 2
    ) AS person_visit
    RIGHT JOIN missing_dates ON person_visit.visit_date = missing_dates.missing_date
WHERE
    person_visit.visit_date IS NULL
ORDER BY
    missing_dates.missing_date ASC;