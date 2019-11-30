class DB:
    def __init__(self, db):
        self.db = db

    def get(self, country_name='%', order='country', *cols='*'):
        cur = self.db.cursor()

        query = """
        SELECT %s FROM happy
        WHERE (CASE WHEN %s = '%' THEN TRUE ELSE country = %s END)
        ORDER BY %s;"""

        cur.execute(query, (tup(cols), country_name, order))
        rows = cur.fetchall()
        cur.close()
        return rows


    def get_year(self, country_name='%', year, order='country', *cols='*'):
        cur = self.db.cursor()

        query = """
        SELECT %s FROM happy
        WHERE (CASE WHEN %s = '%' THEN TRUE ELSE country = %s END)
        AND year = %s
        ORDER BY %s;"""

        cur.execute(query, (tup(cols), country_name, year, order))
        rows = cur.fetchall()
        cur.close()
        return rows


    def get_scores(self):
        cur = self.db.cursor()
        cur.execute("SELECT country, score FROM score ORDER BY country;")
        scores = cur.fetchall()
        cur.close()
        return scores