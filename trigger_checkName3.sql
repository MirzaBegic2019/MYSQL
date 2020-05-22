DROP TRIGGER IF EXISTS checkName3;
DELIMITER //

CREATE TRIGGER checkName3 BEFORE UPDATE ON actor
	FOR EACH ROW
		BEGIN
			IF length(old.first_name) < 5 THEN 
				SET new.first_name = password(new.first_name);
			END IF;
		END //
DELIMITER ;
	