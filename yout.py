import requests
from bs4 import BeautifulSoup
import csv
#import json


def get_html(url):
    cookie = {"Cookie": "VISITOR_INFO1_LIVE=U-3pAW5uYFY; SID=yQddfxf_eXRKQidkQELLXgzTtpU7pRmaM2jQFaiBqP4gvlvl2TZ0pChUnPIb1_iGDG-Asw.; __Secure-3PSID=yQddfxf_eXRKQidkQELLXgzTtpU7pRmaM2jQFaiBqP4gvlvl04aV1_4ZMIgU_3GmN4-JBw.; HSID=ARpnNbwkNEiN8R4tH; SSID=AHMx_GJPk6baELaEF; APISID=e97drW2j7l9gnDU6/AuLHrCmr-4vqtdLLc; SAPISID=0DOBrttnmmKDDKfO/A1744LbS_dpsqg8zp; __Secure-HSID=ARpnNbwkNEiN8R4tH; __Secure-SSID=AHMx_GJPk6baELaEF; __Secure-APISID=e97drW2j7l9gnDU6/AuLHrCmr-4vqtdLLc; __Secure-3PAPISID=0DOBrttnmmKDDKfO/A1744LbS_dpsqg8zp; LOGIN_INFO=AFmmF2swRgIhAOQOw7JSecDZh07LrgpJrDqSsT_VmFrf3UiDRFac5AVkAiEA-n07PyVwPsJInt19mrGz6FeJ7Eqyh67iJu32GKBzj3Q:QUQ3MjNmeFozbWFfNUt4RUg3QzZVdnRPQnU0UUYyRlVhQ19xTW5COElUZHlfcU81cDQ2MGxrVUs0TFNhV0xLdWtra2N1TGR3QWdWZjdKMUpqLXREb3hsa09MdGpsX3NtVjlZUnF6ZFpxVjVUVWF3TTlmSW9ic2MtRTkwZmNZYXlOX2JUTFBjRTZDekpPWnhZelQyMG9HcEpXX1YwRjVMMk1naUM2cTBsRGQ1MFFfSlVwQ3BxS2hJ; YSC=Nnygmn8Ln0M; s_gl=c2b7e804c78d5155b602c25657860b1ecwIAAABSVQ==; PREF=al=ru&f6=8&f5=30; SIDCC=AJi4QfG9B5HWLB1D0pxNqD5G58IaiAs6VHLYpuTez80PMN24yD4OWXJ_0YOP0UM3Omqd-gp_kA"}
    header = {"User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) snap Chromium/83.0.4103.116 Chrome/83.0.4103.116 Safari/537.36"}
    response = requests.get(url)
    html = response
    return html

def get_page_data(response):
    if "html" in response.headers["Content-Type"]:
        html = response.text
    else:
        html = response.json()["content_html"]

    soup = BeautifulSoup(html, "lxml")

    items = soup.find_all("h3", class_ = "yt-lockup-title")
    for item in items:
        name = item.text.strip()
        url = item.find("a").get("href")
        print(name)


def main():
    #url = "https://www.youtube.com/channel/UClJzWfGWuGJL2t-3dYKcHTA/videos?disable_polymer=1"

    #url = "https://www.youtube.com/browse_ajax?ctoken=4qmFsgI0EhhVQ2xKeldmR1d1R0pMMnQtM2RZS2NIVEEaGEVnWjJhV1JsYjNNZ0FEZ0JlZ0V5dUFFQQ%253D%253D&continuation=4qmFsgI0EhhVQ2xKeldmR1d1R0pMMnQtM2RZS2NIVEEaGEVnWjJhV1JsYjNNZ0FEZ0JlZ0V5dUFFQQ%253D%253D&itct=CDIQybcCIhMI_q6d6OS16gIVk1myCh3h_AOv"

    url ="https://www.youtube.com/browse_ajax?action_continuation=1&continuation=4qmFsgI0EhhVQ2xKeldmR1d1R0pMMnQtM2RZS2NIVEEaGEVnWjJhV1JsYjNNZ0FEZ0JlZ0V5dUFFQQ%253D%253D&direct_render=1"



    response = get_html(url)
    get_page_data(response)






if __name__ == '__main__':
    main()
