/***** Produkty *****/

# wszystkie produkty
SELECT * 
FROM kawiarnia.produkt;

# produkty na stanie
SELECT * 
FROM kawiarnia.produkt
WHERE ilosc > 0;

# produkty, które się skończyły
SELECT * 
FROM kawiarnia.produkt
WHERE ilosc = 0;

/***** Pracownik *****/
# wszyscy uytkownicy
SELECT * 
FROM kawiarnia.pracownik;

# wszyscy pracownicy
SELECT * 
FROM kawiarnia.pracownik
WHERE rola = "Pracownik";

# wszyscy kierownicy
SELECT * 
FROM kawiarnia.pracownik
WHERE rola = "Kierownik";

/***** Etat *****/
# etaty pracowników z DZISIEJSZA datą
SELECT * 
FROM kawiarnia.etat
WHERE data_pracy = CURDATE() ;

# etat pracowników na konkretny dzień (YYYY-MM-DD)
SELECT * 
FROM kawiarnia.etat
WHERE data_pracy = '2024-03-12';

/***** Zamówienie *****/
# zamówienia z wybranym statusem
SELECT * 
FROM kawiarnia.zamowienie
WHERE status_zamowienia = '0';

# wszystkie dane zamówienia
SELECT *
FROM kawiarnia.dane_zamowienia; 

# dane zamówienia o konkretnym id
SELECT *
FROM kawiarnia.dane_zamowienia
WHERE id = 1; 
