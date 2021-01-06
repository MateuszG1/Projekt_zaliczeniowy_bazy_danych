delimiter //
CREATE TRIGGER przypomnienia BEFORE UPDATE ON dostawcy
FOR EACH ROW
BEGIN
	IF NEW.Adres = NULL THEN
		SET NEW.Adres = 'Nie podano';
	END IF
END;
delimiter ;