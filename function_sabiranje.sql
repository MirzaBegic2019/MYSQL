DROP FUNCTION IF EXISTS sabiranje;
DELIMITER //
CREATE FUNCTION sabiranje(br1 INT, br2 INT)
RETURNS INT
BEGIN
DECLARE p3 VARCHAR(20);
SET p3 = br1 + br2;
RETURN p3;
END //
DELIMITER ;