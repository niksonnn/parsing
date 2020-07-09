import requests
import json
import csv
from bs4 import BeautifulSoup



def get_url(url):
    response = requests.get(url)
    if response.status_code == 200:
        html = response.text
        return html
    print(response.status_code)

def get_data(html):
    all_stops = []
    soup = BeautifulSoup(html, "lxml")
    stops = soup.find_all("div", class_ = "station_unit")
    #print(stops)
    for stop in stops:
        stop = stop.text
        oren_stop = "Оренбург, остановка общественного транспорта, {}".format(stop)
        all_stops.append(oren_stop)
        with open("oren_stops.txt", "a", encoding="utf8") as f:
            f.write("{} \n".format(oren_stop))
    print(len(all_stops))
    return all_stops

def yandex_coords(all_stops):
    #api = "cb4bc065-86ec-4098-a572-ac01ecabd498"
    for stop in all_stops:
        #url = 'https://geocode-maps.yandex.ru/1.x?geocode={}&apikey={}&[format="json"]&[lang="ru_RU"]'.format(stop, api)
        url = "https://yandex.ru/maps/48/orenburg/search/{}".format(stop)
        print(url)
        try:
            html = response(url)
        except:
            print("-")

        stop_link = get_data1(html)

        url2 = ref_url(stop_link)

        html2 = response(url2)
        coords(html2)

def coords(html):
    soup = BeautifulSoup(html, "lxml")
    coord = soup.find("div", "card-dropdown-view__content")
    #coord1 = coord.find("div", class_ = "card-feature-view__main")
    #print(coord1)
    coord2 = coord.find("div", class_ = "card-share-view__text")
    print(coord2)

    #return coord



def ref_url(s):
    st = s.split("=")[1]
    print(st)

    st2 = st.split("&")[0]
    print(st2)
    url2 = "https://yandex.ru/maps/48/orenburg/stops/{}/".format(st2)
    return url2

def response(url):
    r = requests.get(url)
    html = r.text
    return html

def get_data1(html):
    soup = BeautifulSoup(html, "lxml")
    if ("div", "card-dropdown-view__content") in soup:

        #coord1 = coord.find("div", class_ = "card-feature-view__main")
        print(coord1)
        coord2 = coord1.find("div", class_ = "card-share-view__text")
        return coord2
    else:
         vars = soup.find_all("div", "search-business-snippet-view")
    for var in vars:
        if var.find("div", class_ = "search-business-snippet-view__categories").find("a", class_= "search-snippet-categories-view__category").text.strip() == "Остановка общественного транспорта":
            stop_link = var.find("div", class_ = "search-business-snippet-view__header" ).find("a", class_ = "link-wrapper").get("href")
            print(stop_link)
            return stop_link






def main():
    url_stop = "http://orenburg.ginfo.ru/routes/stations/"
    html = get_url(url_stop)
    all_stops = get_data(html)
    yandex_coords(all_stops)
#
#



if __name__ == '__main__':
    main()
