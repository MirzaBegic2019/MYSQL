-- USE korisnik;
-- SHOW INDEX FROM korisnik;

-- ALTER TABLE grad ADD INDEX fx_index (grad ASC);

USE sakila;
-- SELECT * FROM film WHERE description LIKE '%drama%';
SELECT * FROM film WHERE MATCH (description) AGAINST ('-epic +drama +action' IN BOOLEAN MODE);
