import plotly.offline as py
import plotly.graph_objs as go


def worldgraph1(ctry, data, ccode, title="Worldwide Happiness", reverse=False):
    fig = go.Figure(
        data=go.Choropleth(
            locations=ccode,
            z=data,
            text=ctry,
            autocolorscale=True,
            reversescale=reverse,
            marker_line_color="darkgray",
            marker_line_width=0.5,
            colorbar_title="Happiness",
        )
    )
    fig.update_layout(
        title_text=title,
        geo=dict(
            showframe=False, showcoastlines=False, projection_type="equirectangular"
        ),
        annotations=[
            dict(
                x=0.55,
                y=0.1,
                xref="paper",
                yref="paper",
                text="Source: Worldwide Happiness Report, 2019",
                showarrow=False,
            )
        ],
    )
    fig.show()


def worldgraph2(ctry, data, ccode, title="Worldwide Happiness", reverse=False):
    # reverse looks better flipped in this one, so we flip it here to keep it clear
    reverse2 = not reverse
    data = [
        dict(
            type="choropleth",
            locations=ccode,
            z=data,
            text=ctry,
            autocolorscale=False,
            reversescale=reverse2,
            marker=dict(line=dict(color="rgb(180, 180, 180)", width=0.5)),
            colorbar=dict(
                autotick=True,
                title=title,
                thickness=15,
                len=0.6,
                tickfont=dict(size=14),
                titlefont=dict(size=14),
            ),
        )
    ]
    layout = dict(
        title=title,
        font=dict(size=18),
        geo=dict(
            showframe=False, showcoastlines=False, projection=dict(type="Mercator")
        ),
    )
    fig = dict(data=data, layout=layout)
    py.iplot(fig, validate=False, filename="world-heatmap")
