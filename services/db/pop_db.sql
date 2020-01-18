-- producent
INSERT INTO producent (nazwa) VALUES ('Boeing');
INSERT INTO producent (nazwa) VALUES ('Airbus');

-- model
    -- Boeing
    INSERT INTO model (producent_id, wersja, liczba_miejsc, masa) VALUES (1, '737-800', 162, 41145);
    INSERT INTO model (producent_id, wersja, liczba_miejsc, masa) VALUES (1, '787-9', 250, 110000);

    -- Airbus
    INSERT INTO model (producent_id, wersja, liczba_miejsc, masa) VALUES (2, 'A380', 555, 277000);

-- panstwo
INSERT INTO panstwo (nazwa) VALUES ('Polska');
INSERT INTO panstwo (nazwa) VALUES ('Irlandia');
INSERT INTO panstwo (nazwa) VALUES ('Niemcy');
INSERT INTO panstwo (nazwa) VALUES ('Chiny');
INSERT INTO panstwo (nazwa) VALUES ('Stany Zjednoczone');
INSERT INTO panstwo (nazwa) VALUES ('Zjednoczone Emiraty Arabskie');

-- linia_lotnicza
INSERT INTO linia_lotnicza (nazwa, panstwo_id) VALUES ('Lot', 1);
INSERT INTO linia_lotnicza (nazwa, panstwo_id) VALUES ('Ryanair', 2);
INSERT INTO linia_lotnicza (nazwa, panstwo_id) VALUES ('Lufthansa', 3);
INSERT INTO linia_lotnicza (nazwa, panstwo_id) VALUES ('China Southern', 4);
INSERT INTO linia_lotnicza (nazwa, panstwo_id) VALUES ('Delta', 5);
INSERT INTO linia_lotnicza (nazwa, panstwo_id) VALUES ('Emirates', 6);

-- samolot
    -- LOT
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('SP-AAA', 2, 1);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('SP-AAB', 2, 1);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('SP-AAC', 2, 1);

    -- Ryanair
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('EI-AAA', 1, 2);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('EI-AAB', 1, 2);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('EI-AAC', 1, 2);

    -- Lufthansa
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('D-AAAA', 3, 3);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('D-AAAB', 3, 3);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('D-AAAC', 3, 3);

    -- China Southern
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('B-0000', 3, 4);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('B-0001', 3, 4);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('B-0002', 3, 4);

    -- Delta
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('N-00000', 2, 5);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('N-00001', 2, 5);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('N-00002', 2, 5);

    -- Emirates
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('A6-AAA', 3, 6);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('A6-AAB', 3, 6);
    INSERT INTO samolot (kod, model_id, linia_lotnicza_id) VALUES ('A6-AAC', 3, 6);


-- miasto
INSERT INTO miasto (nazwa, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Krakow', 1, 50.04, 19.72);
INSERT INTO miasto (nazwa, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Dublin', 2, 52.32, -6.52);
INSERT INTO miasto (nazwa, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Berlin', 3, 51.51, 13.14);
INSERT INTO miasto (nazwa, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Pekin', 4, 39.94, 116.12);
INSERT INTO miasto (nazwa, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Nowy Jork', 5, 40.70, -74.26);
INSERT INTO miasto (nazwa, panstwo_id, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Dubaj', 6, 25.08, 54.95);

-- lotnisko
INSERT INTO lotnisko (kod, miasto_id) VALUES ('KRK', 1);
INSERT INTO lotnisko (kod, miasto_id) VALUES ('DUB', 2);
INSERT INTO lotnisko (kod, miasto_id) VALUES ('TXL', 3);
INSERT INTO lotnisko (kod, miasto_id) VALUES ('PKX', 4);
INSERT INTO lotnisko (kod, miasto_id) VALUES ('JFK', 5);
INSERT INTO lotnisko (kod, miasto_id) VALUES ('DXB', 6);

-- lot
INSERT INTO lot (kod, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_wylotu, czas_przylotu) VALUES ('KOD-LOTU', 1, 1, 2, '2020-01-20 12:00:00', '2020-01-20 15:00:00');
INSERT INTO lot (kod, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_wylotu, czas_przylotu) VALUES ('KOD-LOTU', 2, 2, 1, '2020-01-20 12:00:00', '2020-01-20 15:00:00');
INSERT INTO lot (kod, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_wylotu, czas_przylotu) VALUES ('KOD-LOTU', 3, 2, 3, '2020-01-20 12:00:00', '2020-01-20 14:00:00');
INSERT INTO lot (kod, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_wylotu, czas_przylotu) VALUES ('KOD-LOTU', 4, 4, 5, '2020-01-20 12:00:00', '2020-01-20 20:00:00');
INSERT INTO lot (kod, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_wylotu, czas_przylotu) VALUES ('KOD-LOTU', 5, 5, 6, '2020-01-20 12:00:00', '2020-01-20 24:00:00');
INSERT INTO lot (kod, samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_wylotu, czas_przylotu) VALUES ('KOD-LOTU', 6, 4, 6, '2020-01-20 12:00:00', '2020-01-20 20:00:00');
