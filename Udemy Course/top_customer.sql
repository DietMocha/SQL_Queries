SELECT
  cust.first_name, cust.last_name, count(cust.customer_id) as rent_count, sum(pay.amount) as revenue
FROM
  customer cust, payment pay
WHERE
  cust.customer_id = pay.customer_id
GROUP BY
  cust.customer_id
