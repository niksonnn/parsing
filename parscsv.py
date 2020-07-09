import csv


def write_csv(data):
    filename = "nams.csv"
    with open(filename, "a", encoding = "utf8") as f:
        writer = csv.writer(f) #delimiter, dialect
        writer.writerow((data['name'], data['surname'], data['age']))

def write_csv2(data):
    filename = "nams.csv"
    with open(filename, "a", encoding = "utf8") as f:
        order = ['name', 'surname', 'age']
        writer = csv.DictWriter(f, fieldnames=order)

        writer.writerow(data)







def main():
    d = {"name": "Petr", "surname": 'Petrov', "age": 21}
    d1 = {"name": "Ivan", "surname": 'Ivanova', "age": 24}
    d2 = {"name": "Rita", "surname": 'Ritovenko', "age": 31}

    ld = [d, d1, d2]


    with open("cmc_pages.csv") as file:
        fieldnames = ["name", "price", "url"]
        reader = csv.DictReader(file, fieldnames = fieldnames)

        for row in reader:
            print(row)


#    for i in ld:
#        write_csv2(i)






if __name__ == '__main__':
    main()
