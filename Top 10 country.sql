SELECT D.country,
	COUNT(customer_id) AS "number OF customers"
	FROM Customer A
	INNER JOIN address B ON A.address_id = B.address_id
	INNER JOIN city C ON B.city_id = C.city_id
	INNER JOIN country D ON C.country_id = D.country_id
	GROUP BY country
	ORDER BY COUNT (customer_id) DESC
	LIMIT 10