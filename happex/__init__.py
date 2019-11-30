# pylint: disable=invalid-name, wrong-import-position
from . import db
from flask import Flask

app = Flask("happex")
app.db = db.DB(psycopg2.connect("dbname=happiness user=happex"))

from . import main
