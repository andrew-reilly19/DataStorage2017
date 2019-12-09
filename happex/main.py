import json
from flask import render_template
from happex import app
import matplotlib
import io

matplotlib.use("agg")

from matplotlib import pyplot


@app.route("/")
def index():
    scores = [[x[0], float(x[1])] for x in app.db.get_all_scores()]
    return render_template("index.html", data=scores)


@app.route("/scores")
def get_scores():
    return "hello"
    # return json.dumps(list(map(lambda x: (x[0], float(x[1])), app.db.get_all_scores())))


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
    rows = app.db.get_country(ctry)

    if not rows:
        return f"<h1>No data available</h1>"

    average = lambda i: round(
        sum([x[i] for x in rows if x[i] is not None])
        / len([x[i] for x in rows if x[i] is not None]),
        2,
    )

    name = rows[0][0]

    # Add world averages for context?
    ladder = average(2)
    lifeexpect = average(3)
    socialsupport = average(4)
    generosity = average(5)
    paffect = average(6)
    delivery = average(7)
    corruption = average(8)

    return render_template(
        "country.html",
        code=ctry,
        name=name,
        ladder=ladder,
        lifeexpect=lifeexpect,
        socialsupport=socialsupport,
        generosity=generosity,
        paffect=paffect,
        deliveryquality=delivery,
        corruption=corruption,
    )


@app.route("/country/<ctry>/graph.png")
def get_country_graph(ctry):
    rows = app.db.get_country(ctry)

    data = io.BytesIO()

    pyplot.plot([x[1] for x in rows], [float(x[2]) for x in rows])
    pyplot.axis([2005, 2018, 0, 10])
    pyplot.savefig(data, format="png")
    pyplot.clf()

    return data.getvalue(), 200, {"Content-Type": "image/png"}
