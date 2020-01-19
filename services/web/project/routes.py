import os
from flask import send_from_directory, render_template, redirect, url_for, flash

from project import app, db, forms


def flash_errors(form):
    """Flashes form errors"""
    for field, errors in form.errors.items():
        for error in errors:
            flash(
                u"Błąd w polu %s - %s" % (getattr(form, field).label.text, error),
                "error",
            )


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/favicon.ico")
def favicon():
    return send_from_directory(
        os.path.join(app.root_path, "static"),
        "favicon.ico",
        mimetype="image/vnd.microsoft.icon",
    )


@app.route("/tables/<table_name>", methods=["GET"])
def tables(table_name):
    [table, colnames] = db.select(table_name, value="*")
    return render_template("tables.html", table=table, colnames=colnames)


@app.route("/insert/<table_name>", methods=["GET", "POST"])
def insert(table_name):
    all_forms = forms.get_all_forms()
    form = all_forms[table_name]

    if form.validate_on_submit():
        db.insert(table_name, form)
        flash("Poprawnie dodano wiersz do tabeli '{}'".format(table_name), "success")
        return redirect(url_for("tables", table_name=table_name))
    else:
        flash_errors(form)

    return render_template("insert.html", form=form, table_name=table_name)
