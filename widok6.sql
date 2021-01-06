CREATE VIEW widok6 AS
SELECT produkty.Nazwa_produktu, dostawcy.Nazwa_dostawcy, dostawcy.Nr_telefonu_dostawcy
FROM produkty RIGHT OUTER JOIN dostawcy ON produkty.Kod_dostawcy = dostawcy.Kod_dostawcy;