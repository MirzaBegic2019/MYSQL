/* SELECT upiti */

#SELECT "Ja se zovem Mirza!";
USE sakila;
#SELECT COUNT(first_name) FROM actor;
#SELECT COUNT(DISTINCT last_name) FROM actor;
#SELECT first_name, last_name FROM actor WHERE last_name = 'ALLEN';
#SELECT first_name, last_name FROM actor LIMIT 2,2; /* Prvi broj koliko hoćemo unosa, drugi broj koliko prekoči kad idemo od početka */

#SELECT SQL_CALC_FOUND_ROWS first_name, last_name FROM actor LIMIT 10;
#SELECT FOUND_ROWS();