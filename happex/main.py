import json
from happex import app

# import matplotlib.pyplot as plt


@app.route("/")
def index():
    """Homepage - worldmap data or options for each page?"""
    return json.dumps(list(map(lambda x: (x[0], float(x[1])), app.db.get_scores())))


"""
def query():
    # some way to display and import map options
    select = "input here"

    # loading in data
    countries = app.db.get_2018_countries
    ladder = app.db.get_2018_ladder
    paffect = app.db.get_2018_paffect
    naffect = app.db.get_2018_naffect

    # if statements to choose what to plot by
    if select == "ladder":
        ydata = ladder
    if select == "paffect":
        ydata = paffect
    if select == "naffect":
        ydata = naffect

    # replotting worldmap with selected data - replace this line
    print(countries, ydata)
"""


@app.route("/scores")
def get_scores():
    return json.dumps(list(map(lambda x: (x[0], float(x[1])), app.db.get_scores())))


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


@app.route("/country/<country>")
def get_country(country):
    paffects = app.db.get(country_name=country, cols=("year", "paffect"))
    return json.dumps(list(map(lambda x: (x[0], float(x[1])), paffects)))
