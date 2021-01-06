CREATE FUNCTION Darmowa_dostawa (Zamówione INT)
RETURNS VARCHAR(30)
BEGIN
	DECLARE Czy_darmowa VARCHAR(50);
	IF Zamówione >= 25 THEN
		SET Czy_darmowa = 'Darmowa dostawa';
    ELSEIF Zamówione < 25 THEN
		SET Czy_darmowa = 'Brak darmowej dostawy';
	END IF;
RETURN Czy_darmowa;
END
