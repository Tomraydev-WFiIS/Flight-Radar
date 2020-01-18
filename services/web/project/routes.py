import os
from flask import send_from_directory, render_template

from project import app, db


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/favicon.ico") 
def favicon(): 
    return send_from_directory(os.path.join(app.root_path, "static"), "favicon.ico", mimetype="image/vnd.microsoft.icon")

@app.route("/tables/<table_name>", methods=["GET"])
def tables(table_name):
    [table, colnames] = db.select(table=table_name, value="*")
    return render_template("tables.html", table=table, colnames=colnames)