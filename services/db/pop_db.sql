-- producent
INSERT INTO producent (nazwa) VALUES ('Boeing');
INSERT INTO producent (nazwa) VALUES ('Airbus');

-- model
    -- Boeing
    INSERT INTO model (producent_id, wersja, liczba_miejsc, masa) VALUES (1, '737-800', 162, 41145);
    INSERT INTO model (producent_id, wersja, liczba_miejsc, masa) VALUES (1, '787-9', 250, 110000);

    -- Airbus
    INSERT INTO model (producent_id, wersja, liczba_miejsc, masa) VALUES (2, 'A380', 555, 277000);

-- linia_lotnicza
INSERT INTO linia_lotnicza (nazwa, panstwo) VALUES ('Lot', 'Polska');
INSERT INTO linia_lotnicza (nazwa, panstwo) VALUES ('Ryanair', 'Irlandia');
INSERT INTO linia_lotnicza (nazwa, panstwo) VALUES ('Lufthansa', 'Niemcy');

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


-- miasto
INSERT INTO miasto (nazwa, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Krakow', 50.04, 19.72);
INSERT INTO miasto (nazwa, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Dublin', 52.32, -6.52);
INSERT INTO miasto (nazwa, dlugosc_geograficzna, szerokosc_geograficzna) VALUES ('Berlin', 51.51, 13.14);

-- lotnisko
INSERT INTO lotnisko (kod, miasto_id) VALUES ('KRK', 1);
INSERT INTO lotnisko (kod, miasto_id) VALUES ('DUB', 2);
INSERT INTO lotnisko (kod, miasto_id) VALUES ('TXL', 3);

-- lot
INSERT INTO lot (samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_wylotu, czas_przylotu) VALUES (1, 1, 2, '2020-01-20 12:00:01', '2020-01-20 15:00:01');
INSERT INTO lot (samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_wylotu, czas_przylotu) VALUES (2, 2, 1, '2020-01-20 12:00:01', '2020-01-20 15:00:01');
INSERT INTO lot (samolot_id, lotnisko_odlotu_id, lotnisko_przylotu_id, czas_wylotu, czas_przylotu) VALUES (3, 2, 3, '2020-01-20 12:00:01', '2020-01-20 14:00:01');

