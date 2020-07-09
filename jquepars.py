import requests
from bs4 import BeautifulSoup
import csv

def get_html(url):
    header = {"User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) snap Chromium/83.0.4103.116 Chrome/83.0.4103.116 Safari/537.36"}

    response = requests.get(url, headers =header)
    html = response.text
    return html

def write_csv(data):
    with open("jquerypars.csv", "a", encoding = "utf8") as f:
        order = ["since", "author",  "email", "tel"]
        writer = csv.DictWriter(f, fieldnames = order)
        writer.writerow(data)

def get_article(html):
    soup = BeautifulSoup(html, "lxml")
    # try:
    ts = soup.find("div", class_ = "testimonial-container").find_all('div', class_ = "author-details")
    # except:
    #     ts = []
    return ts


def get_data(ts):
    for t in ts:
        try:
            since = t.find("p", class_ = "traxer-since").text
        except:
            since = "not defined"
        try:
            author = t.find("p", class_ = "testimonial-author").text.strip()
        except:
            author = "not defined"

        try:
            email = t.find("ul", class_ = "testimonial-meta").find("li", class_ = "email").text
        except:
            email = "not defined"
        try:
            tel = t.find("ul", class_ = "testimonial-meta").find("li", class_ = "tel").text
        except:
            tel = "not defined"

        data = {"since": since, "author": author, "email": email, "tel": tel}
        print(author)
        write_csv(data)


def main():
    # 1 Получение контейнера с отзывами и списка отзывов
    # 2 если контейнер есть парсим отзывы
    # 3 если контейнера нет , цикл прерываетс
    page =1
    while True:

        url = "https://catertrax.com/why-catertrax/traxers/page/{}/".format(str(page))
        articles = get_article(get_html(url))
        print(url)
        if articles:
            get_data(articles)
            page = page + 1
        else:
            break


if __name__ == '__main__':
    main()
