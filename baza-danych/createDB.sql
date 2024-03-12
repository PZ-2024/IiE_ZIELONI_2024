/* TWORZENIE BAZY */

CREATE SCHEMA kawiarnia;

USE kawiarnia;

CREATE TABLE pracownik(
	email VARCHAR(100) PRIMARY KEY NOT NULL UNIQUE,	
	haslo VARCHAR(100) NOT NULL,
	imie VARCHAR(50) NOT NULL,
	nazwisko VARCHAR(50) NOT NULL,
	rola ENUM('Pracownik', 'Kierownik', 'Administrator')
);

CREATE TABLE produkt(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nazwa VARCHAR(100) NOT NULL,
	cena NUMERIC(4,2) NOT NULL,
	ilosc INT NOT NULL
);

CREATE TABLE zamowienie(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	data_zamowienia TIMESTAMP NOT NULL,
	status_zamowienia ENUM('0','1','2'), /* 0 - nowe, 1 - w trakcie, 2 - zrealizowane */
	pracownik VARCHAR(100) NOT NULL,
	
	FOREIGN KEY (pracownik) REFERENCES pracownik(email)
);

CREATE TABLE zamowienie_produkt(
	produkt INT NOT NULL,
	zamowienie INT NOT NULL,
	ilosc INT NOT NULL,
	
	PRIMARY KEY (produkt,zamowienie),
	FOREIGN KEY (produkt) REFERENCES produkt(id),
	FOREIGN KEY (zamowienie) REFERENCES zamowienie(id)
);

CREATE TABLE etat(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	data_pracy TIMESTAMP NOT NULL,
	pracownik VARCHAR(100) NOT NULL,
	
	FOREIGN KEY (pracownik) REFERENCES pracownik(email)
);