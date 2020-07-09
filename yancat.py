import requests
import csv
from bs4 import BeautifulSoup


def get_html(url):

    response = requests.get(url)
    if response.ok: #200
        html = response.text
        return html
    else:
        print(response.status_code)



def get_page_data(html):

    soup = BeautifulSoup(html, "lxml")
    lis = soup.find_all("div", class_ = "desktop-rating-selection-film-item")
    #print(len(lis))
    serials = []
    for li in lis:
        try:
            name = li.find("p", class_ ="selection-film-item-meta__name").text
        except:
            name = ""
        #print(name)
        try:
            url = "https://www.kinopoisk.ru" + li.find("a", class_ = "selection-film-item-meta__link").get("href")
        except:
            url = ""
        #print(url)
        try:
            country = li.find("p", class_ = "selection-film-item-meta__meta-additional").find_all("span")[0].text
        except:
            country = ""
        #print(country)
        try:
            category = li.find("p", class_ = "selection-film-item-meta__meta-additional").find_all("span")[1].text
        except:
            category = ""
        #print(category)
        try:
            rating = li.find("span", class_ = "rating__value rating__value_positive").text
        except:
            rating = ""
        #print(rating)
        data = {"name":name, "url": url, "country":country, "category": category, "rating":rating}
        serials.append(data)
        write_csv(data)
    return(serials)

def write_csv(data):
    with open("serial.csv", "a", encoding = "utf8") as f:
        writer = csv.writer(f)
        writer.writerow([data["name"],
                        data["url"],
                        data["country"],
                        data["category"],
                        data["rating"]])

def main():
    for i in range(1, 10):
        url = "https://www.kinopoisk.ru/popular/films/?page={}&sort=popularity&quick_filters=serials&tab=all".format(i)
        html = get_html(url)
        get_page_data(html)

if __name__ == "__main__":
    main()
