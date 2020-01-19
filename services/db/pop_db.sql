-- producent
INSERT INTO producent (nazwa_producenta) VALUES ('Boeing');
INSERT INTO producent (nazwa_producenta) VALUES ('Airbus');

-- model
    -- Boeing
    INSERT INTO model (nazwa_modelu, producent_id, liczba_miejsc, masa) VALUES ('737-800', 1, 162, 41145);
    INSERT INTO model (nazwa_modelu, producent_id, liczba_miejsc, masa) VALUES ('787-9', 1,  250, 110000);

    -- Airbus
    INSERT INTO model (nazwa_modelu, producent_id, liczba_miejsc, masa) VALUES ('A380', 2, 555, 277000);

-- panstwo
INSERT INTO panstwo (nazwa_panstwa) VALUES ('Polska');
INSERT INTO panstwo (nazwa_panstwa) VALUES ('Irlandia');
INSERT INTO panstwo (nazwa_panstwa) VALUES ('Niemcy');
INSERT INTO panstwo (nazwa_panstwa) VALUES ('Chiny');
INSERT INTO panstwo (nazwa_panstwa) VALUES ('Stany Zjednoczone');
INSERT INTO panstwo (nazwa_panstwa) VALUES ('Zjednoczone Emiraty Arabskie');

-- linia_lotnicza
INSERT INTO linia_lotnicza (nazwa_linii, panstwo_id) VALUES ('Lot', 1);
INSERT INTO linia_lotnicza (nazwa_linii, panstwo_id) VALUES ('Ryanair', 2);
INSERT INTO linia_lotnicza (nazwa_linii, panstwo_id) VALUES ('Lufthansa', 3);
INSERT INTO linia_lotnicza (nazwa_linii, panstwo_id) VALUES ('China Southern', 4);
INSERT INTO linia_lotnicza (nazwa_linii, panstwo_id) VALUES ('Delta', 5);
INSERT INTO linia_lotnicza (nazwa_linii, panstwo_id) VALUES ('Emirates', 6);

-- samolot
    -- LOT
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('SP-AAA', 2, 1);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('SP-AAB', 2, 1);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('SP-AAC', 2, 1);

    -- Ryanair
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('EI-AAA', 1, 2);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('EI-AAB', 1, 2);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('EI-AAC', 1, 2);

    -- Lufthansa
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('D-AAAA', 3, 3);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('D-AAAB', 3, 3);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('D-AAAC', 3, 3);

    -- China Southern
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('B-0000', 3, 4);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('B-0001', 3, 4);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('B-0002', 3, 4);

    -- Delta
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('N-00000', 2, 5);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('N-00001', 2, 5);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('N-00002', 2, 5);

    -- Emirates
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('A6-AAA', 3, 6);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('A6-AAB', 3, 6);
    INSERT INTO samolot (numer_rejestracyjny, model_id, linia_lotnicza_id) VALUES ('A6-AAC', 3, 6);


-- miasto
INSERT INTO miasto (nazwa_miasta, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Krakow', 1, 50.04, 19.72);
INSERT INTO miasto (nazwa_miasta, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Dublin', 2, 52.32, -6.52);
INSERT INTO miasto (nazwa_miasta, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Berlin', 3, 51.51, 13.14);
INSERT INTO miasto (nazwa_miasta, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Pekin', 4, 39.94, 116.12);
INSERT INTO miasto (nazwa_miasta, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Nowy Jork', 5, 40.70, -74.26);
INSERT INTO miasto (nazwa_miasta, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Dubaj', 6, 25.08, 54.95);

-- lotnisko
INSERT INTO lotnisko (nazwa_lotniska, kod_lotniska, miasto_id) VALUES ('John Paul II International Kraków-Balice', 'KRK', 1);
INSERT INTO lotnisko (nazwa_lotniska, kod_lotniska, miasto_id) VALUES ('Dublin Airport', 'DUB', 2);
INSERT INTO lotnisko (nazwa_lotniska, kod_lotniska, miasto_id) VALUES ('Berlin Tegel Airport', 'TXL', 3);
INSERT INTO lotnisko (nazwa_lotniska, kod_lotniska, miasto_id) VALUES ('Beijing Daxing International Airport', 'PKX', 4);
INSERT INTO lotnisko (nazwa_lotniska, kod_lotniska, miasto_id) VALUES ('John F. Kennedy International Airport', 'JFK', 5);
INSERT INTO lotnisko (nazwa_lotniska, kod_lotniska, miasto_id) VALUES ('Dubai International Airport', 'DXB', 6);

-- lot
INSERT INTO lot (kod_lotu, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_odlotu, czas_przylotu) VALUES ('FR4084', 4, 1, 2, '2019-12-25 12:00:00', '2019-01-20 15:00:00');
INSERT INTO lot (kod_lotu, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_odlotu, czas_przylotu) VALUES ('FR4085', 5, 2, 1, '2019-12-25 12:00:00', '2019-01-20 15:00:00');
INSERT INTO lot (kod_lotu, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_odlotu, czas_przylotu) VALUES ('FR4086', 6, 2, 3, current_timestamp, current_timestamp + (6 * interval '1 hour'));
INSERT INTO lot (kod_lotu, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_odlotu, czas_przylotu) VALUES ('LH726', 7, 1, 3, current_timestamp, current_timestamp + (6 * interval '1 hour'));
INSERT INTO lot (kod_lotu, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_odlotu, czas_przylotu) VALUES ('LH727', 8, 3, 1, '2021-01-20 12:00:00', '2020-01-20 24:00:00');
INSERT INTO lot (kod_lotu, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_odlotu, czas_przylotu) VALUES ('LH728', 9, 3, 5, '2021-01-20 12:00:00', '2020-01-20 20:00:00');
