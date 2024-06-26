-- this query generates a table which aggregates the count of customers and the total revenue per country

SELECT F.country, COUNT(A.customer_id) AS customer_count, SUM(A.amount) AS total_revenue
FROM payment A
LEFT JOIN rental B ON A.rental_id = B.rental_id
LEFT JOIN customer C ON B.customer_id = C.customer_id
LEFT JOIN address D ON C.address_id = D.address_id 
LEFT JOIN city E ON D.city_id = E.city_id
LEFT JOIN country F ON E.country_id = F.country_id
GROUP BY F.country
ORDER BY total_revenue DESC;
