/* How many times was each movie rented? */

SELECT film.title, COUNT(rental.rental_id)
FROM
  film, inventory, rental
WHERE
  film.film_id = inventory.film_id
  AND inventory.inventory_id = rental.inventory_id
GROUP BY
  film.film_id
