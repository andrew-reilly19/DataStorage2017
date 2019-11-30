from happex import app


@app.route("/")
def hello():
    return "Hello World!"


@app.route("/scores")
def scores():
    return app.db.get_scores()


@app.route("/generosity")
def generosity():
    return app.db.get_year(year=2018, cols=("country", "generosity", "paffect"))


@app.route("/country/<country>")
def country():
    return app.db.get(country_name=country, cols=("year", "paffect"))
