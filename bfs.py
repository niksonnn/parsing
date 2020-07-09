from bs4 import BeautifulSoup
import re

#.parent
#.find_parent
#.find_next_sibling()
#.find_previous_sibling()


def get_salary(s):
    pattern = r"\d{1,9}"
    salary = re.findall(pattern, s)[0]
    #salary = re.search(pattern, s).group()
    print(salary)

def main():
    filename = "index.html"
    file = open(filename, encoding="utf8").read()

    soup = BeautifulSoup(file, "lxml")
    row = soup.find_all("div", {"data-set":"salary"})

    # alena = soup.find("div", text = "Alena").find_parent(class_="row")
    # print(alena)

    salary = soup.find_all("div", text = re.compile("\d{1,9}"))

    for i in salary:
        print(i.text)

    #
    # Регулярные выражения
    # ^ - начало строки
    # $ - конец строки
    # . - любой символ
    # + - неограниченное количество вхождений
    # "\d" - цифры
    # "\w"- буквы , цифры, знак нижн подчерк _
    #
    # ^@,  @twitter








if __name__ == '__main__':
    main()
