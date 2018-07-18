-- How many distinct renters per month

SELECT
  left(r.rental_date, 7) as month, count(r.rental_id) as total_rentals, count(distinct r.customer_id) as unique_renters, count(r.rental_id)/count(distinct r.customer_id) as avg_per_renter
FROM
  rental r
GROUP BY
  1
;

-- brainbuster
-- The number of distinct films rented each month

SELECT
  left(r.rental_date, 7) as month, count(r.rental_id) as total_rentals, count(distinct i.film_id) as unique_rentals,  count(distinct i.film_id) / count(r.rental_id) as avg_rate
FROM
  rental r, inventory i
WHERE
  r.inventory_id = i.inventory_id
GROUP BY
  1
ORDER BY
  1
;
