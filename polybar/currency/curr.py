#!/usr/bin/python

import os
import yaml
import json
import requests

base_url = "https://api.exchangeratesapi.io/latest"

script_path = os.path.dirname(os.path.abspath(__file__))

with open(script_path + "/conf.yaml", 'r') as file:
	conf = yaml.load(file, Loader = yaml.SafeLoader)

base_curr = conf["base_curr"]
conv_curr = conf["conv_curr"]

icons = {
	'EUR': '',
	'INR': '',
	'HUF': 'Ft'
}

output_str = ""
success = True

for curr in base_curr:
	for conv in conv_curr:
		if curr == conv:
			continue
		url = base_url + '?symbols=' + conv + '&base=' + curr
		try:
			response = requests.get(url = url)
		except:
			success = False
			break
		if response.status_code == 200:
			rate = response.json()
			price = rate['rates'][conv]
			price = round(float(price), 2)
			output_str += str(1) + icons[curr] + '  ' + str(price) + icons[conv] + "  "
		else:
			success = False
	if not success:
		break
if success:
	output_str = output_str[:len(output_str)-2]
	print(output_str)
else:
	print("~")
