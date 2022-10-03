import csv
import random as r
import datetime as d
number_of_records = input("Number of data needed ")
number_of_records = int(number_of_records)

with open('313project.csv', mode='w') as file:
  file_writer = csv.writer(file,
                           delimiter=',',
                           quotechar='"',
                           quoting=csv.QUOTE_MINIMAL)

  file_writer.writerow(['YYYY-MM-DD', 'net sales-currency', 'num orders-int'])
  date = d.datetime(2020, 2, 20)
  
  for i in range(number_of_records):
    date += d.timedelta(days=1)
    file_writer.writerow([
      date,
      round(r.uniform(500.00, 2100.00), 2),
      r.randrange(10, 400)
    ])
