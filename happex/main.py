from happex import app
#import matplotlib.pyplot as plt

#Homepage - worldmap data or options for each page?
@app.route("/")
def hello():
    #initial map:
    country, score = app.db.get_world_scores()

    #for plotting - replace this line
    print(country, score)

def query():
    #some way to display and import map options
    select = query()

    #loading in data
    countries = app.db.get_2018_countries
    ladder = app.db.get_2018_ladder
    paffect = app.db.get_2018_paffect
    naffect = app.db.get_2018_naffect

    #if statements to choose what to plot by
    if select == "ladder":
        ydata = ladder
    if select == "paffect":
        ydata = paffect
    if select == "naffect":
        ydata = naffect

    #replotting worldmap with selected data - replace this line
    print(countries, ydata)

#Scores Page
#@app.route("/scores")
#def scores():
#    return app.db.get_scores()

#Generosity
@app.route("/generosity")
def generosity():
    return app.db.get_year(year=2018, cols=("country", "generosity", "paffect"))

#Country
@app.route("/country/<country>")
def thiscountry():
    return app.db.get(country_name="America", cols=("year", "paffect"))