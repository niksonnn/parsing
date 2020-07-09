import requests
import csv

def get_html(url):
    response = requests.get(url)
    html = response.text
    return html


def write_csv(data):
    with open("live_inter.csv", "a", encoding = "utf8") as f:
        order = ["name", "url", "description", "traffic"]
        writer = csv.DictWriter(f, fieldnames = order)
        writer.writerow(data)


def main():
    for i in range(1, 7027):
        url = "https://www.liveinternet.ru/rating/ru//today.tsv?page={}".format(i)
        html = get_html(url)
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



if __name__ == '__main__':
    main()
