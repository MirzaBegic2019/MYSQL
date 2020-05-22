DROP TRIGGER IF EXISTS checkName2;
DELIMITER //

CREATE TRIGGER checkName2 BEFORE INSERT ON actor
	FOR EACH ROW
		BEGIN
			IF length(new.first_name) < 5 THEN 
				SET new.first_name = concat(new.first_name, "_short");
			ELSE 
				SET new.first_name = concat(new.first_name, "_long");
			END IF;
		END //
DELIMITER ;
	