USE korisnik;

DELIMITER //

CREATE PROCEDURE unos_izmjena (
_ime VARCHAR(50),
_prezime varchar(50),
_password VARCHAR (100),
_grad int,
_status varchar(20),
_biografija varchar(200)
)

BEGIN
	DECLARE broj_korisnika INT;
	SELECT COUNT(id) FROM korisnik WHERE korisnik.ime = _ime INTO broj_korisnika;

IF broj_korisnika < 1 THEN
		INSERT INTO korisnik (ime, prezime, password, grad_id, status, biografija, datetime)
		VALUES (_ime, _prezime, _password, _grad, _status, _biografija, NOW());
	ELSE
		UPDATE korisnik SET korisnik.password = _password WHERE korisnik.ime = _ime;
	END IF;
END //
DELIMITER ;