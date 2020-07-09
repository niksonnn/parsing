import requests
from bs4 import BeautifulSoup
import csv

def get_html(url):
    response = requests.get(url)
    html = response.text
    return html

def get_data(html):
    soup = BeautifulSoup(html, "lxml")
    plugins = soup.find_all("section", class_="plugin-section")[1].find_all("div", {"class":"entry"})
    print(len(plugins))
    featured_plugins = []
    for plugin in plugins:
        title = plugin.find("h3", class_="entry-title").find("a").text.strip()
        rate = refined(plugin.find("span", class_= "rating-count").find("a").text.strip())
        description = plugin.find("div", class_= "entry-excerpt").find("p").text.strip()
        url = plugin.find("h3").find("a").get("href")
        featured_plugins.append({"title": title, "rate":rate, "description": description, "url":url})
        data = {"title": title, "rate":rate,
                "url":url, "description": description}
        write_csv(data)
    return featured_plugins

def refined(s):
    #'888 total ratings'
    r = s.split()[0].replace(",", "")
    print(r)
    return r

def write_csv(data):
    filename = "plugins.csv"
    with open(filename, "a", encoding="utf8") as f:
        writer = csv.writer(f)

        writer.writerow((data["title"],
                        data["url"],
                        data["rate"]))

def main():
    url = "https://wordpress.org/plugins/"
    html = get_html(url)
    print(get_data(html))





if __name__ =="__main__":
    main()
