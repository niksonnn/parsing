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
    all_links = []
    soup = BeautifulSoup(html, "lxml")
    stops = soup.find_all("div", class_ = "station_unit")
    #print(stops)
    for stop in stops:
        link = "http://orenburg.ginfo.ru{}".format(stop.find("a").get("href"))
        stop = stop.text
        os = {"name": stop, "url": link}
        or_stop = "Оренбург, {}, http://orenburg.ginfo.ru{}".format(stop, link)
        all_stops.append(os)
        all_links.append(link)
        #with open("or_stops.txt", "a", encoding="utf8") as f:
            #f.write("{} \n".format(or_stop))
    print(len(all_stops))
    print(len(all_links))
    return all_stops


def get_coords(html):
    soup = BeautifulSoup(html, "lxml")
    coord = soup.find("div", {"id": "in_content"}).find("textarea", {"id":"json"}).text.split('"')
    return coord[5]


def yandex_map(coord):
    api = "cb4bc065-86ec-4098-a572-ac01ecabd498"
    url = 'https://geocode-maps.yandex.ru/1.x?geocode={}&apikey={}&[format="json"]&[lang="ru_RU"]'.format(coord, api)
    print(url)
    response = requests.get(url)
    html = response.text
    print(html)


def main():
    url_stop = "http://orenburg.ginfo.ru/routes/stations/"
    html = get_url(url_stop)
    all_stops = get_data(html)
    coords = []
    for stop in all_stops:
        url = stop["url"]
        html = get_url(url)
        coord = get_coords(html)
        ostanov = {'name' :stop["name"], 'coord': coord, "url": stop["url"]}
        string_stop = "Название - {}, координаты - {}, ссылка - {}".format(stop["name"], coord, stop["url"])
        coords.append(ostanov)
        yandex_map(coord)
        #with open("orenburg_stops.txt", "a", encoding = "utf8") as f:
            #f.write("{}\n".format(string_stop))







if __name__ == '__main__':
    main()
