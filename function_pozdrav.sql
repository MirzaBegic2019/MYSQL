DROP FUNCTION IF EXISTS pozdrav;
DELIMITER //
CREATE FUNCTION pozdrav()
RETURNS varchar(20)
BEGIN
DECLARE x VARCHAR(20);
SET x = 'pozdrav';
RETURN x;
END //
DELIMITER ;