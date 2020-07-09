import requests
from bs4 import BeautifulSoup
import csv

def get_html(url):

    response = requests.get(url)
    html = response.text
    return html

def get_data(html):
    all_coins = []
    soup = BeautifulSoup(html, "lxml")
    coins = soup.find("tbody").find_all("tr", class_= "cmc-table-row")
    print(len(coins))
    for coin in coins:
        rank = coin.find("td", class_ = "cmc-table__cell cmc-table__cell--sticky cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__rank").text.strip()
        title = coin.find("td", class_ = "cmc-table__cell cmc-table__cell--sticky cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__name").text.strip()
        market_cap = coin.find("td", class_ = "cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__market-cap").text.replace("$", "").replace(",","").strip()
        price = coin.find("td", class_ ="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price").text.replace("$", "").replace(",", "").strip()
        link = coin.find("td", class_ = "cmc-table__cell cmc-table__cell--sticky cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__name").find("a", class_= "cmc-link").get("href")
        marker = coin.find("td", class_ = "cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__circulating-supply").text.split(" ")[1]
        coin_dict = {"rank": rank, "title":title, "market_cap": market_cap, "price": price, "link": "https://coinmarketcap.com{}".format(link), "marker": marker}
        all_coins.append(coin_dict)
        #print(link)
        #print(marker)
        write_csv((coin_dict))
    return all_coins

def write_csv(data):
    filename = "coinmarketcap.csv"
    with open(filename, "a", encoding = "utf8") as f:
        writer = csv.writer(f)
        writer.writerow((data["rank"],
                            data["title"],
                            data["market_cap"],
                            data["price"],
                            data["link"],
                            data["marker"]))

def redact(str):
    s = str.split()


def main():
    url = "https://coinmarketcap.com/"
    html = get_html(url)
    print(len(get_data(html)))

if __name__ == "__main__":
    main()
