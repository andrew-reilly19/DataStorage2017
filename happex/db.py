class DB:
    def __init__(self, db):
        self.db = db

    def get(self, cols, country_name="%", order="country"):
        if not cols:
            cols = ("*",)
        cur = self.db.cursor()

        query = """
        SELECT %s FROM happy
        WHERE (CASE WHEN %s = '%' THEN TRUE ELSE country = %s END)
        ORDER BY %s;"""

        cur.execute(query, (tuple(cols), country_name, order))
        rows = cur.fetchall()
        cur.close()
        return rows

    def get_year(self, year, cols, country_name="%", order="country"):
        if not cols:
            cols = ("*",)
        cur = self.db.cursor()

        query = """
        SELECT %s FROM happy
        WHERE (CASE WHEN %s = '%' THEN TRUE ELSE country = %s END)
        AND year = %s
        ORDER BY %s;"""

        cur.execute(query, (tuple(cols), country_name, year, order))
        rows = cur.fetchall()
        cur.close()
        return rows

    # Functions to use for initial map:
    # List of countries in order by country
    def get_2018_countries(self):
        cur = self.db.cursor()
        country = []
        cur.execute("SELECT country FROM happy WHERE year=2018 ORDER BY country;")
        rows = cur.fetchall()
        cur.close()
        for item in rows:
            country.append(item[0])
        return country

    # List of life ladder scores in order by country
    def get_2018_ladder(self):
        cur = self.db.cursor()
        ladder = []
        cur.execute("SELECT lifeladder FROM happy WHERE year=2018 ORDER BY country;")
        rows = cur.fetchall()
        cur.close()
        for item in rows:
            ladder.append(item[0])
        return ladder

    # List of positive affects in order by country
    def get_2018_paffect(self):
        cur = self.db.cursor()
        paffect = []
        cur.execute("SELECT paffect FROM happy WHERE year=2018 ORDER BY country;")
        rows = cur.fetchall()
        cur.close()
        for item in rows:
            paffect.append(item[0])
        return paffect

    # List of negative affects in order by country
    def get_2018_naffect(self):
        cur = self.db.cursor()
        naffect = []
        cur.execute("SELECT naffect FROM happy WHERE year=2018 ORDER BY country;")
        rows = cur.fetchall()
        cur.close()
        for item in rows:
            naffect.append(item[0])
        return naffect

    # Using Score table
    # List of countries and scores
    def get_world_scores(self):
        cur = self.db.cursor()
        country = []
        score = []
        cur.execute("SELECT country, score FROM score ORDER BY country;")
        rows = cur.fetchall()
        cur.close()
        for item in rows:
            country.append(item[0])
            score.append(item[1])
        return country, score