-- this table joins movies with their corresponding revenue and orders them according to their revenue

FROM film A
LEFT JOIN inventory B ON A.film_id = B.film_id
LEFT JOIN rental C ON B.inventory_id = C.inventory_id
LEFT JOIN payment D ON C.rental_id = D.rental_id
LEFT JOIN film_category E ON A.film_id = E.film_id
LEFT JOIN category F ON F.category_id = E.category_id
GROUP BY A.title, F.name, A.rental_rate
ORDER BY total_movie_revenue DESC;
