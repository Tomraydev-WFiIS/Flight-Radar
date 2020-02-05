ALTER TABLE lot
ADD CONSTRAINT no_time_travel CHECK (
    czas_przylotu > czas_odlotu
);

ALTER TABLE miasto
ADD CONSTRAINT proper_coordinates CHECK (
    dlugosc_geograficzna >= -180.0 AND
    dlugosc_geograficzna < 180.0 AND
    szerokosc_geograficzna >= -90.0 AND
    szerokosc_geograficzna < 90.0
);

ALTER TABLE model
ADD CONSTRAINT proper_physics CHECK (
    liczba_miejsc > 0 AND liczba_miejsc < 5000 AND
    masa > 0 AND masa < 1000000
);

ALTER TABLE samolot
ADD CONSTRAINT samolot_unique UNIQUE (
    numer_rejestracyjny
);

ALTER TABLE lotnisko
ADD CONSTRAINT lotnisko_unique UNIQUE (
    nazwa_lotniska,
    kod_lotniska
);

ALTER TABLE linia_lotnicza
ADD CONSTRAINT linia_lotnicza_unique UNIQUE (
    nazwa_linii
);

-- nazwa miasta nie musi być unikatowa
-- (!) kod lotu nie musi być unikatowy