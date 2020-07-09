import requests
import csv
from bs4 import BeautifulSoup
import re




def get_html(url):
    response = requests.get(url)
    if response.ok:
        html = response.text
        return html
    print(response.status_code)


def get_page_data(html):
    soup = BeautifulSoup(html, "lxml")
    trs = soup.find("tbody").find_all("tr", class_ = "cmc-table-row")
    #print(len(table))

    for tr in trs:
        try:
            name = tr.find("td", class_ = "cmc-table__cell cmc-table__cell--sticky cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__name").text.strip()
        except:
            name = ""
        try:
            link ="https://coinmarketcap.com" + tr.find("td", class_ = "cmc-table__cell cmc-table__cell--sticky cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__name").find("a", class_ = "cmc-link").get("href")
        except:
            link = ""
        try:
            price = tr.find("td", class_ = "cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price").text.replace('$', "").replace(",", "")
        except:
            price = ""
        data = {"name": name, "price":price, "link": link}
        csv_write(data)

def csv_write(data):
    filename = "cmc_pages.csv"
    with open(filename, "a", encoding = "utf8") as f:
        writer = csv.writer(f)
        writer.writerow((data["name"],
                        data["price"],
                        data["link"]))

def main():
    url = "https://coinmarketcap.com/"

    while True:
        html = get_html(url)
        get_page_data(html)

        soup = BeautifulSoup(html, "lxml")
        try:
            pattern = "Next"
            url ="https://coinmarketcap.com" + soup.find("div", class_ = "cmc-table-listing__pagination-button-group cmc-button-group va78v0-0 RDZiS").find("a",
                            text = re.compile(pattern)).get("href")
            print(url)
        except:
            break


if __name__ =="__main__":
    main()
