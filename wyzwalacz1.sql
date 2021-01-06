delimiter //
CREATE TRIGGER sprawdz_ilosc BEFORE UPDATE ON produkty
FOR EACH ROW
BEGIN
	IF NEW.Ilość < 0 THEN
		SET NEW.Ilość = 0;
	END IF
END;
delimiter ;