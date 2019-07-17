#!/usr/bin/env python

import sys
import requests
from lxml import html
from bs4 import BeautifulSoup

user_agent = {'User-agent': 'Mozilla/5.0'}
debug = {'verbose': sys.stderr}

url = "https://www.amazon.in/Kingston-SSDNow-Internal-SA400S37-240GIN/dp/B079TH8YZQ/ref=sr_1_4?keywords=ssd&qid=1557477666&s=computers&sr=1-4"

def getHTML(url):
	page = requests.get(url, headers = user_agent)
	return page.text

# print(url)
html_doc = getHTML(url)

try:
	with open('lmao.html', 'w') as file:
		file.write(html_doc)

	soup = BeautifulSoup(html_doc, 'html.parser')

	price = soup.findAll('span', {'id':'priceblock_dealprice'})
	if price == []:
		price = soup.findAll('span', {'id':'priceblock_ourprice'})
		price = price[0].text.strip()
		price = price[2:]
		print('', price)
	else:
		print(price[0].text.strip())
except:
	print(" ~")
