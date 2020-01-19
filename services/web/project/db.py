import psycopg2


class Cursor:
    def __enter__(self):
        self.conn = psycopg2.connect(
            dbname="flight_radar_db", user="postgres", host="db", password="postgres"
        )
        self.cur = self.conn.cursor()
        return self.cur

    def __exit__(self, exception_type, exception_value, traceback):
        self.conn.commit()
        self.conn.close()


def select(table_name, value):
    with Cursor() as c:
        c.execute("SELECT {} FROM {};".format(value, table_name))
        colnames = [col[0] for col in c.description]
        table = c.fetchall()

        # # resolve id's to names
        # if resolve:
        #     table = [list(row) for row in table]
        #     for i in range(1, len(colnames)):
        #         name = colnames[i]
        #         if "_id" in name:
        #             name = name.replace("_odlotu", "")
        #             name = name.replace("_przylotu", "")
        #             for row in table:
        #                 foreign_id = row[i]
        #                 with Cursor() as c2:
        #                     c2.execute("SELECT nazwa FROM {} WHERE {}={};".format(name.replace("_id", ""), name, foreign_id))
        #                     new_name = c2.fetchall()[0][0]
        #                 row[i] = new_name

    return (table, colnames)


def insert(table_name, form):
    with Cursor() as c:
        columns = []
        values = []
        for field in form:
            if field.name not in ["csrf_token", "submit"] and field.data not in [
                "",
                None,
            ]:
                columns.append(field.name)
                values.append(field.data)

        columns = (", ").join(columns)
        values = ["'" + str(val) + "'" for val in values]
        values = (", ").join(values)
        query = "INSERT INTO {} ({}) VALUES ({});".format(table_name, columns, values)
        c.execute(query)

    return True
