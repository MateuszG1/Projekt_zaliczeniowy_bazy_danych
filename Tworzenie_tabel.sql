USE hurtownia;

CREATE TABLE Dostawcy
(
    Kod_dostawcy INT AUTO_INCREMENT PRIMARY KEY,
    Nazwa_dostawcy VARCHAR(30) NOT NULL,
    Nr_telefonu_dostawcy INT NOT NULL,
    Adres VARCHAR(30) NOT NULL
);

CREATE TABLE Produkty
(
    Kod_produktu INT AUTO_INCREMENT PRIMARY KEY,
    Nazwa_produktu VARCHAR(30) NOT NULL,
    Producent VARCHAR(30) NOT NULL,
    Kod_dostawcy INT NOT NULL,
    Cena DECIMAL NOT NULL,
    Ilość INT DEFAULT 0 NOT NULL,
    FOREIGN KEY (Kod_dostawcy) REFERENCES Dostawcy(Kod_dostawcy)
);
CREATE TABLE Klienci
(
	Kod_klienta INT AUTO_INCREMENT PRIMARY KEY,
    Imie_klienta VARCHAR(20) NOT NULL,
    Nazwisko_klienta VARCHAR(30) NOT NULL,
    Nr_telefonu_klienta INT NOT NULL
);

CREATE TABLE Pracownicy
(
	Pesel_pracownika BIGINT PRIMARY KEY NOT NULL,
    Imie_pracownika VARCHAR(20) NOT NULL,
    Nazwisko_pracownika VARCHAR(30) NOT NULL,
    Nr_telefonu_pracownika INT NOT NULL
);

CREATE TABLE Zamówienia
(
	Numer_zamówienia INT AUTO_INCREMENT PRIMARY KEY,
    Kod_produktu INT NOT NULL,
    Kod_zamawiającego INT NOT NULL,
    Ilość INT NOT NULL,
    Status_zamówienia VARCHAR(20),
    FOREIGN KEY (Kod_produktu) REFERENCES Produkty(Kod_produktu),
    FOREIGN KEY (Kod_zamawiającego) REFERENCES Klienci(Kod_klienta)
 );   
    
    
    