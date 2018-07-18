-- What store has brought in the most revenue?

-- mine
SELECT
  inv.store_id, count(inv.store_id) as rent_count, sum(pay.amount) as revenue
FROM
  inventory inv, payment pay, rental rent
WHERE
  inv.inventory_id = rent.inventory_id
  -- AND rent.customer_id = pay.customer_id incorrect to many duplicate customers
  AND rent.rental_id = pay.rental_id
GROUP BY
  inv.store_id
ORDER BY
  revenue DESC
;

-- Udemy
SELECT
  i.store_id as "Store ID", sum(p.ammount) as Revenue
FROM
  inventory i, payment p, rental r
WHERE
  p.rental_id = r.rental_id AND r.inventory_id = i.inventory_id
GROUP BY
  1
ORDER BY
  2 desc
;
