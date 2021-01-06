CREATE VIEW widok5 AS
SELECT klienci.Imie_klienta, klienci.Nazwisko_klienta, zamówienia.Numer_zamówienia, zamówienia.Kod_produktu, zamówienia.Ilość, zamówienia.Status_zamówienia
FROM klienci
INNER JOIN zamówienia ON klienci.Kod_klienta = zamówienia.Kod_zamawiającego;