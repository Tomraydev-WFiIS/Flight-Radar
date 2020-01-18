import psycopg2
import pprint
pp = pprint.PrettyPrinter(indent=4)

class Cursor:
    def __enter__(self):
        self.conn = psycopg2.connect(dbname="flight_radar_db", user="postgres", host="db", password="postgres")
        self.cur = self.conn.cursor()
        return self.cur

    def __exit__(self, exception_type, exception_value, traceback):
        self.conn.close()

def select(table, value):
    with Cursor() as c:
        c.execute("SELECT {} FROM {};".format(value, table))
        colnames = [col[0] for col in c.description]
        table = c.fetchall()
        mutable = [list(row) for row in table]

        # resolve id's to names
        for i in range(1, len(colnames)):
            name = colnames[i] # producent_id
            if "_id" in name:
                name = name.replace("_odlotu", "")
                name = name.replace("_przylotu", "")
                for row in mutable:
                    foreign_id = row[i]
                    with Cursor() as c2:
                        c2.execute("SELECT nazwa FROM {} WHERE {}={};".format(name.replace("_id", ""), name, foreign_id))
                        new_name = c2.fetchall()[0][0]
                    row[i] = new_name

    return [mutable, colnames]
