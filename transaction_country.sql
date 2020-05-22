START TRANSACTION; 
INSERT INTO country (country) VALUES ('Country A'); 
SAVEPOINT country_a; 
INSERT INTO country (country) VALUES ('Country B'); 
SAVEPOINT country_b; 
INSERT INTO country (country) VALUES ('Country C'); 
SAVEPOINT country_c; 
ROLLBACK TO SAVEPOINT country_b;
