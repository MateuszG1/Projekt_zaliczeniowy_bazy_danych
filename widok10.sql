/*Lista klientów kobiet do złożenia życzeń z okazji Dnia Kobie*/

CREATE VIEW widok10 AS
SELECT *
FROM klienci
WHERE Imie_klienta LIKE '%a';