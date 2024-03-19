/* Dane Pracowników */

INSERT INTO kawiarnia.pracownik VALUES('admin@kawiarnia.pl', 'adminadmin', 'Admin', 'Admin', 'Administrator');
INSERT INTO kawiarnia.pracownik VALUES('kierownik@kawiarnia.pl', 'kierownik', 'Kierownik', 'Kierownik', 'Kierownik');
INSERT INTO kawiarnia.pracownik VALUES('mateusz@kawiarnia.pl', '123456', 'Mateusz', 'Kowalski', 'Pracownik');
INSERT INTO kawiarnia.pracownik VALUES('pawel@kawiarnia.pl', '654321', 'Paweł', 'Nowak', 'Pracownik');
INSERT INTO kawiarnia.pracownik VALUES('zofia@kawiarnia.pl', '111222', 'Zofia', 'Brzęczyszczykiewiczówna', 'Pracownik');

/* Dane produktów */

INSERT INTO kawiarnia.produkt VALUES(null, 'Kawa Czarna', 9.99, 10);
INSERT INTO kawiarnia.produkt VALUES(null, 'Kawa Rozpuszczalna', 9.98, 15);
INSERT INTO kawiarnia.produkt VALUES(null, 'Sernik', 12.99, 4);
INSERT INTO kawiarnia.produkt VALUES(null, 'Herbata Czarna', 5.99, 5);
INSERT INTO kawiarnia.produkt VALUES(null, 'Mleko', 4.99, 20);
INSERT INTO kawiarnia.produkt VALUES(null, 'Cukier biały', 0.99, 100);

/* Dane etatów na DZISIAJ */

INSERT INTO kawiarnia.etat VALUES(null, CURDATE(), 'mateusz@kawiarnia.pl');
INSERT INTO kawiarnia.etat VALUES(null, CURDATE(), 'pawel@kawiarnia.pl');
INSERT INTO kawiarnia.etat VALUES(null, CURDATE(), 'zofia@kawiarnia.pl');

/* Dodanie nowych zamówień */

INSERT INTO kawiarnia.zamowienie VALUES(null, NOW(), '0', 'mateusz@kawiarnia.pl');
INSERT INTO kawiarnia.zamowienie VALUES(null, NOW(), '0', 'pawel@kawiarnia.pl');

/* Dodanie do zamówień produktów */

INSERT INTO kawiarnia.zamowienie_produkt VALUES(1,1,1);
INSERT INTO kawiarnia.zamowienie_produkt VALUES(3,1,2);
INSERT INTO kawiarnia.zamowienie_produkt VALUES(2,2,1);
INSERT INTO kawiarnia.zamowienie_produkt VALUES(5,2,1);
INSERT INTO kawiarnia.zamowienie_produkt VALUES(6,2,1);

/* Dodanie widoków */

CREATE VIEW kawiarnia.dane_zamowienia AS
SELECT z.id, data_zamowienia, status_zamowienia, pracownik, nazwa, zp.ilosc  
FROM kawiarnia.zamowienie z
LEFT JOIN kawiarnia.zamowienie_produkt zp 
ON z.id = zp.zamowienie 
LEFT JOIN kawiarnia.produkt p 
ON p.id = zp.produkt;