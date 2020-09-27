"""
Copyright 2020 Vadim Kholodilo <vadimkholodilo@gmail.com>, Iulia Durova <yulianna199820@gmail.com>
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
"""

from itertools import permutations # To generate all possible permutations.
import csv # To work with CSV files

# This script generates all possible permutations from a list of cities
# Then I'll remove all combinations of cities which don't have a direct flight between them. Unfortunately, I couldn't find an easy way to optimize deletion of routes which don't exist

csv_file = open("cities.csv", mode="r", newline="")
csv_reader = csv.reader(csv_file, delimiter=",")

cities = list()
for row in csv_reader:
    # CSV file has only 1 column, so we are only interested in the first item of row (row is a list)
    cities.append(row[0])

csv_file.close()
possible_permutations = list(permutations(cities, 2))

csv_file = open("combinations.csv", mode="w", newline="")
csv_writer = csv.writer(csv_file, delimiter=",", quotechar='"', quoting=csv.QUOTE_MINIMAL)

for permutation in possible_permutations:
    csv_writer.writerow([permutation[0], permutation[1]])
 
csv_file.close() 