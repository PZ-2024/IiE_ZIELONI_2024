/* Dane Pracowników */

INSERT INTO pracownik VALUES('admin@kawiarnia.pl', 'adminadmin', 'Admin', 'Admin', 'Administrator');
INSERT INTO pracownik VALUES('kierownik@kawiarnia.pl', 'kierownik', 'Kierownik', 'Kierownik', 'Kierownik');
INSERT INTO pracownik VALUES('mateusz@kawiarnia.pl', '123456', 'Mateusz', 'Kowalski', 'Pracownik');
INSERT INTO pracownik VALUES('pawel@kawiarnia.pl', '654321', 'Paweł', 'Nowak', 'Pracownik');
INSERT INTO pracownik VALUES('zofia@kawiarnia.pl', '111222', 'Zofia', 'Brzęczyszczykiewiczówna', 'Pracownik');

/* Dane produktów */

INSERT INTO produkt VALUES(null, 'Kawa Czarna', 9.99, 10);
INSERT INTO produkt VALUES(null, 'Kawa Rozpuszczalna', 9.98, 15);
INSERT INTO produkt VALUES(null, 'Sernik', 12.99, 4);
INSERT INTO produkt VALUES(null, 'Herbata Czarna', 5.99, 5);
INSERT INTO produkt VALUES(null, 'Mleko', 4.99, 20);
INSERT INTO produkt VALUES(null, 'Cukier biały', 0.99, 100);

/* Dane etatów na DZISIAJ */

INSERT INTO etat VALUES(null, CURDATE(), 'mateusz@kawiarnia.pl');
INSERT INTO etat VALUES(null, CURDATE(), 'pawel@kawiarnia.pl');
INSERT INTO etat VALUES(null, CURDATE(), 'zofia@kawiarnia.pl');

/* Dodanie nowych zamówień */

INSERT INTO zamowienie VALUES(null, NOW(), '0', 'mateusz@kawiarnia.pl');
INSERT INTO zamowienie VALUES(null, NOW(), '0', 'pawel@kawiarnia.pl');

/* Dodanie do zamówień produktów */

INSERT INTO zamowienie_produkt VALUES(1,1,1);
INSERT INTO zamowienie_produkt VALUES(3,1,2);
INSERT INTO zamowienie_produkt VALUES(2,2,1);
INSERT INTO zamowienie_produkt VALUES(5,2,1);
INSERT INTO zamowienie_produkt VALUES(6,2,1);