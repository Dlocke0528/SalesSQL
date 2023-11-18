SELECT A. Customer_id,
		A. first_name AS "customer first name",
		A. last_name AS "customer last name",
		D. country, 
		C. city,
SUM (E.amount) AS "total amount paid"
FROM Customer A
INNER JOIN address B ON A.address_id = B.address_id
	INNER JOIN city C ON B.city_id = C.city_id
	INNER JOIN country D ON C.country_id = D.country_id
	INNER JOIN payment E on A. customer_id = E. customer_id
	WHERE city IN ('Cianjur', 'Acua', 'So Leopoldo', 'Iwaki', 'Ambattur', 'Ahanwei', 'Teboksary', 'Tianjir')
	GROUP BY A. customer_id, first_name, last_name, country, city
	ORDER BY "total amount paid" DESC
	LIMIT 5