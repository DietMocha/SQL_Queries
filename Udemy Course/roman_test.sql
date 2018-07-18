-- SQL request(s) below
SELECT
    p.product_id as PRODUCT_ID,
    p.name as NAME,
    p.price as PRICE
FROM
    product p
WHERE
    p.price >= 100
ORDER BY
    3 desc
