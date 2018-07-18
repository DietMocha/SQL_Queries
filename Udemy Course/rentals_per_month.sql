LEFT()
MIN()
MAX()

SELECT
  left(r.rental_date, 7), count(r.rental_id)
FROM
  rental r
GROUP BY
  1
ORDER BY
  2 desc
;
            ------|
SELECT left(2005-05-24 22:53:30, 7)

SELECT
  f.title as film_title, max(r.rental_date) as last_rent_date, min(r.rental_date) as first_rent_date
FROM
  rental r, film f, inventory i
WHERE
  r.inventory_id = i.inventory_id
  AND i.film_id = f.film_id
GROUP BY
  f.film_id
;

-- video brain buster
-- What customers haven't rented a movie in the last month?

SELECT
  c.first_name, c.last_name
FROM
  rental r, customer c
WHERE
  c.customer_id = r.customer_id
  AND max(r.rental_date) !> (2006-02-01)
GROUP BY
  c.customer_id
;

SELECT
  r.customer_id, max(rental_date)
FROM
  rental r
WHERE
  r.rental_date > 2006-02-01 00:00:00
GROUP BY
  r.rental_id
;

SELECT
  r.customer_id,left(r.rental_date, 7) > (2006-01)
FROM
  rental r
GROUP BY
  r.customer_id
;

-- brainbuster a
-- Every customer's last rental rental_date

-- mine
SELECT
--  replaced by concat solution code
  c.first_name, c.last_name, max(r.rental_date) as last_rent
FROM
  rental r, customer c
WHERE
  c.customer_id = r.customer_id
GROUP BY
  c.customer_id
;

-- Udemy
SELECT
  concat(c.first_name, " ", c.last_name) as customer, max(r.rental_date) as last_rent, c.email as contact
FROM
  customer c, rental r
WHERE
  c.customer_id = r.customer_id
GROUP BY
  c.customer_id

-- brainbuster b
-- Revenue by each month

SELECT
  left(p.payment_date, 7) as YearMonth, sum(p.amount) as Revenue
FROM
  payment p
GROUP BY
  left(p.payment_date, 7)
;
