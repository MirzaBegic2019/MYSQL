use sakila;
select * from customer
JOIN address on customer.address_id = address.address_id;
