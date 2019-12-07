#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Dec  6 13:59:09 2019

@author: andrew
"""
import plotly.offline as py
import plotly.graph_objs as go
import psycopg2


conn = psycopg2.connect("dbname=Happiness")
cur = conn.cursor()


def worldgraph1(country, score, code, title = 'Worldwide Happiness', reverse = False):
    fig = go.Figure(data=go.Choropleth(
        locations = code,
        z = score,
        text = country,
        autocolorscale=True,
        reversescale=reverse,
        marker_line_color='darkgray',
        marker_line_width=0.5,
        colorbar_title = 'Happiness',
    ))

    fig.update_layout(
        title_text=title,
        geo=dict(
            showframe=False,
            showcoastlines=False,
            projection_type='equirectangular'
        ),
        annotations = [dict(
            x=0.55,
            y=0.1,
            xref='paper',
            yref='paper',
            text='Source: Worldwide Happiness Report, 2019',
            showarrow = False
        )]
    )
    fig.show()

def worldgraph2(country, score, code, title = 'Worldwide Happiness', reverse = False):
    #reverse looks better flipped in this one, so we flip it here to keep it clear
    reverse2 = not reverse
    data = [dict(type='choropleth', locations=code, z=score, text=country,
                 autocolorscale=False, reversescale=reverse2,
                 marker=dict(line=dict(color='rgb(180, 180, 180)', width=0.5)),
                 colorbar=dict(autotick=True, title=title, thickness=15, len=0.6,
                               tickfont=dict(size=14), titlefont=dict(size=14)),)]
    layout = dict(title=title, font=dict(size=18),
                  geo=dict(showframe=False, showcoastlines=False,
                           projection=dict(type='Mercator')))
    fig = dict(data=data, layout=layout)
    py.iplot(fig, validate=False, filename='world-heatmap')


#Graphing overall score
country = []
score = []
code = []
cur.execute("SELECT country, score, alpha3 FROM score, codes WHERE score.country = codes.name ORDER BY country;")
c = cur.fetchall()
for item in c:
    country.append(item[0])
    score.append(item[1])
    code.append(item[2])

worldgraph1(country, score, code)
worldgraph2(country, score, code)


#Graphing positive affect for 2018
country = []
score = []
code = []
cur.execute("SELECT country, paffect, alpha3 FROM happy, codes WHERE happy.country = codes.name and happy.year = 2018 ORDER BY country;")
c = cur.fetchall()
for item in c:
    country.append(item[0])
    score.append(item[1])
    code.append(item[2])

worldgraph1(country, score, code, title = "Positive Affect in 2018")
worldgraph2(country, score, code, title = "Positive Affect in 2018")


#Graphing negative affect
country = []
score = []
code = []
cur.execute("SELECT country, naffect, alpha3 FROM happy, codes WHERE happy.country = codes.name and happy.year = 2018 ORDER BY country;")
c = cur.fetchall()
for item in c:
    country.append(item[0])
    score.append(item[1])
    code.append(item[2])

worldgraph1(country, score, code, title = "Negative Affect in 2018", reverse = True)
worldgraph2(country, score, code, title = "Negative Affect in 2018", reverse = True)


#Graphing life ladder
country = []
score = []
code = []
cur.execute("SELECT country, lifeladder, alpha3 FROM happy, codes WHERE happy.country = codes.name and happy.year = 2018 ORDER BY country;")
c = cur.fetchall()
for item in c:
    country.append(item[0])
    score.append(item[1])
    code.append(item[2])


worldgraph1(country, score, code, title = "Life Ladder in 2018")
worldgraph2(country, score, code, title = "Life Ladder in 2018")
