import requests
import csv
from bs4 import BeautifulSoup
from multiprocessing import Pool
from time import sleep



def get_html(url):
    #sleep(1) - замедлять парсинг
    response = requests.get(url)
    html = response.text
    return html

def write_csv(data):
    with open("live_internet.csv", "a", encoding = "utf8") as f:
        order = ["name", "url", "description", "traffic"]
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)

def get_page_data(html):

        data = html.strip().split("\n")[2:]

        for row in data:
            columns = row.strip().split("\t")
            #print(columns)
            name = columns[0]
            url = columns[1]
            description = columns[2]
            traffic = columns[3]
            data = {"name": name, "url": url, "description": description, "traffic": traffic}
            write_csv(data)

def make_all(url):
    html = get_html(url)
    get_page_data(html)



def main():

        url = "https://www.liveinternet.ru/rating/ru//today.tsv?page={}"
        urls = [url.format(str(i)) for i in range(1, 5366)]
        #print(len(urls))
        with Pool(20) as p:
            p.map(make_all, urls)



#map(function, list_)



if __name__ == '__main__':
    main()
