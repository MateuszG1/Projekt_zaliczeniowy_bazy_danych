CREATE DEFINER=`root`@`localhost` PROCEDURE `Sprawdź_statusy_zamówienia`(IN Numer INT)
BEGIN
SELECT Status_zamówienia
FROM zamówienia
WHERE Numer_zamówienia=Numer;
END