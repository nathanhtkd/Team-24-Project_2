
import csv
import random as r

number_of_records = input("Number of data needed ")
number_of_records = int(number_of_records)


with open('313project.csv', mode='w') as file:
  file_writer = csv.writer(file,
                           delimiter=',',
                           quotechar='"',
                           quoting=csv.QUOTE_MINIMAL)

  file_writer.writerow(['YYYY-MM-DD', 'net sales-currency', 'num orders-int'])

  for i in range(number_of_records):
    file_writer.writerow([
      r.randrange(0, 8, 2),
      round(r.uniform(500.00, 2000.00), 2),
      r.randrange(10, 400)
    ])
