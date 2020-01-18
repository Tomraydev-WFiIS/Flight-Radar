
CREATE SEQUENCE public.panstwo_panstwo_id_seq;

CREATE TABLE public.panstwo (
                panstwo_id INTEGER NOT NULL DEFAULT nextval('public.panstwo_panstwo_id_seq'),
                nazwa VARCHAR NOT NULL,
                CONSTRAINT panstwo_id PRIMARY KEY (panstwo_id)
);


ALTER SEQUENCE public.panstwo_panstwo_id_seq OWNED BY public.panstwo.panstwo_id;

CREATE SEQUENCE public.linia_lotnicza_linia_lotnicza_id_seq;

CREATE TABLE public.linia_lotnicza (
                linia_lotnicza_id INTEGER NOT NULL DEFAULT nextval('public.linia_lotnicza_linia_lotnicza_id_seq'),
                nazwa VARCHAR NOT NULL,
                panstwo_id INTEGER NOT NULL,
                CONSTRAINT linia_lotnicza_id PRIMARY KEY (linia_lotnicza_id)
);


ALTER SEQUENCE public.linia_lotnicza_linia_lotnicza_id_seq OWNED BY public.linia_lotnicza.linia_lotnicza_id;

CREATE SEQUENCE public.producent_producent_id_seq;

CREATE TABLE public.producent (
                producent_id INTEGER NOT NULL DEFAULT nextval('public.producent_producent_id_seq'),
                nazwa VARCHAR NOT NULL,
                CONSTRAINT producent_id PRIMARY KEY (producent_id)
);


ALTER SEQUENCE public.producent_producent_id_seq OWNED BY public.producent.producent_id;

CREATE SEQUENCE public.model_model_id_seq;

CREATE TABLE public.model (
                model_id VARCHAR NOT NULL DEFAULT nextval('public.model_model_id_seq'),
                producent_id INTEGER NOT NULL,
                wersja VARCHAR NOT NULL,
                liczba_miejsc VARCHAR NOT NULL,
                masa REAL NOT NULL,
                CONSTRAINT model_id PRIMARY KEY (model_id)
);


ALTER SEQUENCE public.model_model_id_seq OWNED BY public.model.model_id;

CREATE SEQUENCE public.miasto_miasto_id_seq;

CREATE TABLE public.miasto (
                miasto_id INTEGER NOT NULL DEFAULT nextval('public.miasto_miasto_id_seq'),
                nazwa VARCHAR NOT NULL,
                panstwo_id INTEGER NOT NULL,
                dlugosc_geograficzna REAL NOT NULL,
                szerokosc_geograficzna REAL NOT NULL,
                CONSTRAINT miasto_id PRIMARY KEY (miasto_id)
);


ALTER SEQUENCE public.miasto_miasto_id_seq OWNED BY public.miasto.miasto_id;

CREATE SEQUENCE public.lotnisko_lotnisko_id_seq;

CREATE TABLE public.lotnisko (
                lotnisko_id INTEGER NOT NULL DEFAULT nextval('public.lotnisko_lotnisko_id_seq'),
                kod VARCHAR NOT NULL,
                miasto_id INTEGER NOT NULL,
                CONSTRAINT lotnisko_id PRIMARY KEY (lotnisko_id)
);


ALTER SEQUENCE public.lotnisko_lotnisko_id_seq OWNED BY public.lotnisko.lotnisko_id;

CREATE SEQUENCE public.samolot_samolot_id_seq;

CREATE TABLE public.samolot (
                samolot_id INTEGER NOT NULL DEFAULT nextval('public.samolot_samolot_id_seq'),
                kod VARCHAR NOT NULL,
                model_id VARCHAR NOT NULL,
                linia_lotnicza_id INTEGER NOT NULL,
                CONSTRAINT samolot_id PRIMARY KEY (samolot_id)
);


ALTER SEQUENCE public.samolot_samolot_id_seq OWNED BY public.samolot.samolot_id;

CREATE SEQUENCE public.lot_lot_id_seq;

CREATE TABLE public.lot (
                lot_id INTEGER NOT NULL DEFAULT nextval('public.lot_lot_id_seq'),
                kod VARCHAR NOT NULL,
                samolot_id INTEGER NOT NULL,
                lotnisko_odlotu_id INTEGER NOT NULL,
                lotnisko_przylotu_id INTEGER NOT NULL,
                czas_wylotu TIME NOT NULL,
                czas_przylotu TIME NOT NULL,
                CONSTRAINT lot_id PRIMARY KEY (lot_id)
);


ALTER SEQUENCE public.lot_lot_id_seq OWNED BY public.lot.lot_id;

ALTER TABLE public.linia_lotnicza ADD CONSTRAINT panstwo_linia_lotnicza_fk
FOREIGN KEY (panstwo_id)
REFERENCES public.panstwo (panstwo_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.miasto ADD CONSTRAINT panstwo_miasto_fk
FOREIGN KEY (panstwo_id)
REFERENCES public.panstwo (panstwo_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.samolot ADD CONSTRAINT linia_lotnicza_samolot_fk
FOREIGN KEY (linia_lotnicza_id)
REFERENCES public.linia_lotnicza (linia_lotnicza_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.model ADD CONSTRAINT producent_model_fk
FOREIGN KEY (producent_id)
REFERENCES public.producent (producent_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.samolot ADD CONSTRAINT model_samolot_fk
FOREIGN KEY (model_id)
REFERENCES public.model (model_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.lotnisko ADD CONSTRAINT miasto_lotnisko_fk
FOREIGN KEY (miasto_id)
REFERENCES public.miasto (miasto_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.lot ADD CONSTRAINT lotnisko_lot_fk
FOREIGN KEY (lotnisko_odlotu_id)
REFERENCES public.lotnisko (lotnisko_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.lot ADD CONSTRAINT lotnisko_lot_fk1
FOREIGN KEY (lotnisko_przylotu_id)
REFERENCES public.lotnisko (lotnisko_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.lot ADD CONSTRAINT samolot_lot_fk
FOREIGN KEY (samolot_id)
REFERENCES public.samolot (samolot_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;