import random as r
import datetime as d
import csv

# get number of inputs from user
number_of_records = input("Number of data needed ")
number_of_records = int(number_of_records)

# create csv file
with open('315project2.csv', mode='w') as file:
  file_writer = csv.writer(file,
                           delimiter=',',
                           quotechar='"',
                           quoting=csv.QUOTE_MINIMAL)

  # specifically for saleshistory table, change according to table
  file_writer.writerow(['YYYY-MM-DD', 'net sales-currency', 'num orders-int'])
  date = d.date(2022, 9, 3)
  
  # random sales for each day, rounded to two decimals, random number of orders
  # date increments
  for i in range(number_of_records):
    date += d.timedelta(days=1)
    file_writer.writerow([
      date,
      round(r.uniform(1000.00, 4000.00), 2),
      r.randrange(50, 500)
    ])
