# What customer has paid us the most money
-- mine
SELECT
  	cust.first_name,
  	cust.last_name,
  	count(cust.customer_id) as rent_count,
  	sum(pay.amount) as revenue
FROM
  	customer cust, payment pay
WHERE
  	cust.customer_id = pay.customer_id
GROUP BY
  	cust.customer_id
ORDER BY
  	revenue DESC
LIMIT
	1
;

-- Udemy
SELECT
  p.customer_id, SUM(p.amount) as revenue
FROM
  payment p
GROUP BY
  1
ORDER BY
  2 DESC
;
