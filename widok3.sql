CREATE VIEW widok3 AS
SELECT Kod_zamawiającego, COUNT(Kod_zamawiającego) AS Ilość_zamówień
FROM zamówienia
GROUP BY Kod_zamawiającego;