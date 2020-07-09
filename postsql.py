import csv
#from peewee import PostgresqlDataBase, Model
from peewee import *

db = PostgresqlDatabase(database ="test", user="postgres", password = "1", host = "localhost")

class Coin(Model):
    name = CharField()
    url = TextField()
    price = CharField()

    class Meta:
        database = db




def main():

    db.connect()
    db.create_tables([Coin])

    with open("cmc_pages.csv", encoding = "utf8") as f:
        order = ["name", "price", "url"]
        reader = csv.DictReader(f, fieldnames = order)

        coins = list(reader)

        with db.atomic():
            for index in range(0, len(coins), 100):
                Coin.insert_many(coins[index:index + 100]).execute()

        #with db.atomic():
            # for row in coins:
            #     Coin.create(**row)



        # for row in coins:
        #     coin = Coin(name = row["name"], price = row["price"], url = row["url"])
        #     coin.save()
            #print(row)


if __name__ == '__main__':
    main()
