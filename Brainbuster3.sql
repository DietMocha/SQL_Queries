SELECT
	film.title, language.name, category.name
FROM
	film, `language`, film_category, category
WHERE
	film.language_id = language.language_id AND film.film_id = film_category.film_id AND film_category.category_id = category.category_id

/* wrong
SELECT
  film.title, film_category.category_id/* , language.name *\/
FROM
  film, category, film_category
WHERE
  /* film.language_id = language.language_id,  *\/film.film_id = film_category.film_id, film_category.film_id = film_category.category_id, film_category.category_id = category.category_id
   */
