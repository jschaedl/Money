#!/usr/bin/python

# usage:
# python format_currencies.py currencies.json > formatted.as

import sys
import json


def printDict(data):
	print "Currency.currencies = new Dictionary();"
	for key in data.iterkeys():
		print 'Currency.currencies["' + (key).strip() + '"] = "' + (data[key]).strip() + '";'
		
def printConstants(data):
	for key in data.iterkeys():
		print 'public static const ' + (key).strip() + ':String = "' + (key).strip() + '";'

def main():
	
	with open(sys.argv[1], 'rb') as json_data:
		data = json.load(json_data)
		
	printDict(data)
	printConstants(data)
		
	json_data.close()
	
	#for line in content:
	#	print '"' + (line[:8]).strip() + '" => "' + (line[9:16]).strip() + '", ', 
	#print ");"

if __name__ == '__main__':
    main()