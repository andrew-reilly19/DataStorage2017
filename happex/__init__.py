# pylint: disable=invalid-name, wrong-import-position
from flask import Flask
import psycopg2
from . import db
from . import graphs

app = Flask("happex")
app.db = db.DB(psycopg2.connect("dbname=happiness user=happex"))
app.worldgraph1 = graphs.worldgraph1
app.worldgraph2 = graphs.worldgraph2

from . import main
