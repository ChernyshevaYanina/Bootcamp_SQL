CREATE
OR REPLACE VIEW v_price_with_discount AS
SELECT person.name, pizza_name, price, ROUND(price - price*0.1) AS discount_price
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN person ON person_order.person_id = person.id
ORDER BY person.name, pizza_name;