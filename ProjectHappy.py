#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
@authors: Happiness Group
"""


# import required module to connect to postgres db
import psycopg2

# connect to an existing database
conn = psycopg2.connect("dbname=happiness user=mbohn")

# open a cursor to connect to the database and perform database operations
cur = conn.cursor()

# query for country and score
cur.execute("select country, score from score order by country;")
score = cur.fetchall()
print("List of Countries and Happiness Scores")
print('')
for s in range(len(score)):
    print(score[s])


# get userinput to use for the query
aname = str(input("Please provide a country: "))

SQL = "select year, paffect from happy where country = %s;"
data = (aname,)
cur.execute(SQL, data)
country = cur.fetchall()
print('')
print("Paffect for", aname)
print('')
for c in range(len(country)):
    print(country[c])

# generosity query
cur.execute("select country, generosity, paffect from happy where year = 2018 order by country;")
gen = cur.fetchall()


