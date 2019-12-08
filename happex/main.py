import json
from flask import render_template
from happex import app


@app.route("/")
def index():
    """Homepage - worldmap data or options for each page?"""
    return json.dumps(list(map(lambda x: (x[0], float(x[1])), app.db.get_all_scores())))


def graph_display():
    country, score, code = app.db.get_all_scores()
    return app.worldgraph1(country, score, code, title="Worldwide Happiness 2018")


# Take input here to update map?


@app.route("/hello")
def hello():
    return render_template("hello.html")


@app.route("/scores")
def get_scores():
    return json.dumps(list(map(lambda x: (x[0], float(x[1])), app.db.get_all_scores())))


@app.route("/generosity")
def get_generosity():
    gen = [
        (x, float(y), float(z))
        for x, y, z in app.db.get_year(
            year=2018, cols=("country", "generosity", "paffect")
        )
        if y is not None and z is not None
    ]
    return json.dumps(gen)


@app.route("/country/<ctry>")
def get_country(ctry):
    paffects = app.db.get(country_name=ctry, cols=("year", "paffect"))
    return json.dumps(list(map(lambda x: (x[0], float(x[1])), paffects)))
