-- JOIN - make a table that shows active users and their phone numbers
-- mine

SELECT
  c.active as activity, concat(c.first_name, " ", c.last_name), c.email, a.phone
FROM
	customer c
		LEFT JOIN address a on c.address_id = a.address_id
WHERE
  c.active = 1
;

-- udemy

SELECT
  c.*, a.phone
FROM
	customer c
		LEFT JOIN address a on c.address_id = a.address_id
WHERE
  c.active = 1
;

-- rewards program - 30 rentals

SELECT
  r.customer_id, count(r.rental_id)
FROM
  rental r
GROUP BY
  r.customer_id
HAVING
  count(r.rental_id) >= 30
ORDER BY
	r.customer_id
;
