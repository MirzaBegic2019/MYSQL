DELIMITER //
CREATE PROCEDURE my_procedure5(p1 int, p2 int)
CONTAINS SQL
BEGIN
SELECT p1 + p2 AS result;
END //
DELIMITER ;