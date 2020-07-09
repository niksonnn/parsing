import requests
from bs4 import BeautifulSoup

def get_html(url):
    response = requests.get(url)
    print(response.status_code)

    html = response.text

    return html


def get_data(html):
    soup = BeautifulSoup(html, "lxml")
    h1 = soup.find("div", id="home-welcome").find("header").find("h1")
    return h1.text


def main():
    url = "https://wordpress.org/"
    html = get_html(url)
    print(get_data(html))


if __name__ == "__main__":
    main()
