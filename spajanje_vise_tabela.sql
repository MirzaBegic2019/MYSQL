use sakila;
SELECT customer.first_name, customer.last_name, address.address, address.district, city.city, country.country
FROM customer
JOIN address ON address.address_id = customer.address_id
JOIN city ON city.city_id = address.city_id
JOIN country ON country.country_id = city.country_id
WHERE customer.customer_id < 75 
ORDER BY customer.first_name DESC
LIMIT 10, 3;