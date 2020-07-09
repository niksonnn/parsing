import os
import requests
from bs4 import BeautifulSoup

#base_url ="https://www.youtube.com"
#query ="/playlist?list=PL0lO_mIqDDFUGX9k45bZFuz1ixTvUhd7b"#.format(i)

#response = requests.get(base_url + query)
def get_html(url):
    response = requests.get(url)
    print(response.status_code)
    html = response.text
    #print(html)

    return html

def get_data(html):
    urls = []
    soup = BeautifulSoup(html, "lxml")
    videos = soup.find("table", {"id": "pl-video-table"}).find_all("tr", class_ = "pl-video yt-uix-tile")
    #print(videos)
    print(len(videos))
    for video in videos:
        url = "https://www.youtube.com"+ video.find("a", class_ = "pl-video-title-link yt-uix-tile-link yt-uix-sessionlink spf-link").get("href")
        print(url)
        urls.append(url)
    return urls


def main():
    #url = "https://www.youtube.com/watch?v=I_UjPfSbAPc&list=PLA0M1Bcd0w8yZNgl5J814WQykTZnzj771"
    url = "https://www.youtube.com/playlist?list=PL4sJ_PtqW49CVVyZEkniNFBTazcdOkv2M&disable_polymer=1"
    html = get_html(url)
    videos = get_data(html)
    for video in videos:
        os.system("youtube-dl {}".format(video))

if __name__ == '__main__':
    main()
