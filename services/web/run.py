from project import app


if __name__ == "__main__":
    app.config["SECRET_KEY"] = "XkeMQJkoyUYvtQaO7se8Gw"
    app.run(debug=True, host="0.0.0.0", port=80)
