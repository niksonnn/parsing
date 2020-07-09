import requests
from bs4 import BeautifulSoup
from random import choice


def get_proxy():
    url = "https://free-proxy-list.net/"
    html = requests.get(url).text
    soup = BeautifulSoup(html, "lxml")
    trs = soup.find("table", id = "proxylisttable").find_all("tr")[1:20]
    proxies = []
    for tr in trs:
        tds = tr.find_all('td')
        #print(tds)
        ip = tds[0].text.strip()
        port = tds[1].text.strip()
        #print(ip)
        #print(tds[6].text.strip())
        #schema = "https" if "yes" in tds[6].text.strip() else "http"
        if "yes" in tds[6].text.strip():
            schema = "https"
        else:
            schema = "http"
        #print(schema)
        proxy = {"schema": schema, "address": ip +":" + port}
        #print(proxy)
        proxies.append(proxy)
    return choice(proxies)

def get_html(url):
    p = get_proxy()  #proxies = {"https": "ipaddress:5000"}
    proxy = {p["schema"]:p["address"]}
    response = requests.get(url, proxies = proxy, timeout=5)
    html = response.json()["origin"]
    return html



def main():
    url = "https://httpbin.org/ip"
    data = get_html(url)
    #html = get_proxy()
    print(data)

if __name__ == '__main__':
    main()
