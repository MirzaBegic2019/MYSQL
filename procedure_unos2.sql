USE korisnik; 
DELIMITER // 
CREATE PROCEDURE unos2(ime varchar(50), _prezime varchar(50), _password varchar(100), _grad int, _status varchar(50))
MODIFIES SQL DATA 
BEGIN
INSERT INTO korisnik (ime, prezime, password, grad_id, status) 
VALUES (_ime, _prezime, _password, _grad, _status); 
END //
DELIMITER ;
