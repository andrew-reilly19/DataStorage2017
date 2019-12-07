import json
import plotly.offline as py
import plotly.graph_objs as go
from flask import render_template
from happex import app


@app.route("/")
def index():
    """Homepage - worldmap data or options for each page?"""
    return json.dumps(list(map(lambda x: (x[0], float(x[1])), app.db.get_all_scores())))

def worldgraph1(ctry, data, ccode, title='Worldwide Happiness', reverse=False):
    fig = go.Figure(data=go.Choropleth(
        locations=ccode,
        z=data,
        text=ctry,
        autocolorscale=True,
        reversescale=reverse,
        marker_line_color='darkgray',
        marker_line_width=0.5,
        colorbar_title='Happiness',))
    fig.update_layout(
        title_text=title,
        geo=dict(
            showframe=False,
            showcoastlines=False,
            projection_type='equirectangular'),
        annotations=[dict(
            x=0.55,
            y=0.1,
            xref='paper',
            yref='paper',
            text='Source: Worldwide Happiness Report, 2019',
            showarrow=False)])
    fig.show()

def worldgraph2(ctry, data, ccode, title='Worldwide Happiness', reverse=False):
    #reverse looks better flipped in this one, so we flip it here to keep it clear
    reverse2 = not reverse
    data = [dict(type='choropleth', locations=ccode, z=data, text=ctry,
                 autocolorscale=False, reversescale=reverse2,
                 marker=dict(line=dict(color='rgb(180, 180, 180)', width=0.5)),
                 colorbar=dict(autotick=True, title=title, thickness=15, len=0.6,
                               tickfont=dict(size=14), titlefont=dict(size=14)),)]
    layout = dict(title=title, font=dict(size=18),
                  geo=dict(showframe=False, showcoastlines=False,
                           projection=dict(type='Mercator')))
    fig = dict(data=data, layout=layout)
    py.iplot(fig, validate=False, filename='world-heatmap')

COUNTRY, SCORE, CODE = app.db.get_all_scores()
worldgraph1(COUNTRY, SCORE, CODE, title='Worldwide Happiness 2018')

#Take input here to update map?
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


@app.route("/country/<country>")
def get_country(ctry):
    paffects = app.db.get(country_name=ctry, cols=("year", "paffect"))
    return json.dumps(list(map(lambda x: (x[0], float(x[1])), paffects)))
