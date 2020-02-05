from flask_wtf import FlaskForm
from wtforms import StringField, IntegerField, DecimalField, DateTimeField, SubmitField
from wtforms.validators import DataRequired, ValidationError, InputRequired

def get_all_forms():
    all_forms = {
        "lot": Lot(),
        "lotnisko": Lotnisko(),
        "linia_lotnicza": LiniaLotnicza(),
        "miasto": Miasto(),
        "model": Model(),
        "panstwo": Panstwo(),
        "producent": Producent(),
        "samolot": Samolot(),
    }
    return all_forms


class Lot(FlaskForm):
    kod_lotu = StringField("kod_lotu", validators=[DataRequired()])
    samolot_id = IntegerField("samolot_id", validators=[DataRequired()])
    lotnisko_odlotu_id = IntegerField("lotnisko_odlotu_id", validators=[DataRequired()])
    lotnisko_przylotu_id = IntegerField(
        "lotnisko_przylotu_id", validators=[DataRequired()]
    )
    czas_odlotu = DateTimeField(
        "czas_odlotu (YYYY-MM-DD HH:MM:SS)", validators=[DataRequired()]
    )
    czas_przylotu = DateTimeField(
        "czas_przylotu (YYYY-MM-DD HH:MM:SS)", validators=[DataRequired()]
    )
    submit = SubmitField("Dodaj")


class Lotnisko(FlaskForm):
    nazwa_lotniska = StringField("nazwa_lotniska", validators=[DataRequired()])
    kod_lotniska = StringField("kod_lotniska", validators=[DataRequired()])
    miasto_id = IntegerField("miasto_id", validators=[DataRequired()])
    submit = SubmitField()


class LiniaLotnicza(FlaskForm):
    nazwa_linii = StringField("nazwa_linii", validators=[DataRequired()])
    panstwo_id = IntegerField("panstwo_id", validators=[DataRequired()])
    submit = SubmitField()


class Miasto(FlaskForm):
    nazwa_miasta = StringField("nazwa_miasta", validators=[DataRequired()])
    panstwo_id = IntegerField("panstwo_id", validators=[DataRequired()])
    dlugosc_geograficzna = DecimalField(
        "dlugosc_geograficzna", validators=[InputRequired()]
    )
    szerokosc_geograficzna = DecimalField(
        "szerokosc_geograficzna", validators=[InputRequired()]
    )
    submit = SubmitField()


class Model(FlaskForm):
    nazwa_modelu = StringField("nazwa_modelu", validators=[DataRequired()])
    producent_id = IntegerField("producent_id", validators=[DataRequired()])
    liczba_miejsc = StringField("liczba_miejsc", validators=[DataRequired()])
    masa = DecimalField("masa", validators=[InputRequired()])
    submit = SubmitField()


class Panstwo(FlaskForm):
    nazwa_panstwa = StringField("nazwa_panstwa", validators=[DataRequired()])
    submit = SubmitField()


class Producent(FlaskForm):
    nazwa_producenta = StringField("nazwa_producenta", validators=[DataRequired()])
    submit = SubmitField()


class Samolot(FlaskForm):
    numer_rejestracyjny = StringField("numer_rejestracyjny", validators=[DataRequired()])
    model_id = IntegerField("model_id", validators=[DataRequired()])
    linia_lotnicza_id = IntegerField("linia_lotnicza_id", validators=[DataRequired()])
    submit = SubmitField()
