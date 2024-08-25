CREATE
OR REPLACE VIEW v_generated_dates AS
SELECT
    g_date :: date AS generated_date
FROM
    generate_series(
        '2022-01-01',
        '2022-01-31',
        INTERVAL '1 DAY'
    ) AS g_date
ORDER BY generated_date;