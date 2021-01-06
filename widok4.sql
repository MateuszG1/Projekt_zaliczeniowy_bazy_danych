CREATE VIEW widok4 AS
SELECT Kod_produktu, Nazwa_produktu
FROM produkty
WHERE Kod_produktu IN 
(SELECT Kod_produktu
FROM zamówienia);

