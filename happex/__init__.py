# pylint: disable=invalid-name, wrong-import-position
from flask import Flask
import psycopg2
from . import db

app = Flask("happex")
app.db = db.DB(psycopg2.connect("dbname=happiness user=happex"))

from . import main
