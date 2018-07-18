SELECT rating, COUNT(*) FROM film GROUP BY rating;
SELECT rental_rate, rating, COUNT(*) FROM film GROUP BY rating, rental_rate;
