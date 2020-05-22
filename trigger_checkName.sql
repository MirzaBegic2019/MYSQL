DROP TRIGGER IF EXISTS checkName;
CREATE TRIGGER checkName BEFORE INSERT ON actor
FOR EACH ROW SET new.first_name = concat(new.first_name, "_test");