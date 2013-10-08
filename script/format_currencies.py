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

def printStatics(data):
	for key in data.iterkeys():
		print 'public static function ' + (key).strip() + '(amount:Number):Money { return new Money(amount, new Currency(Currency.' + (key).strip() + ')); }'

def printStaticsTest(data):
	for key in data.iterkeys():
		print '[Test] public function testMoneyBuilder' + (key).strip() + '():void {	var money:Money = MoneyBuilder.' + (key).strip() + '(100); var expectedAmount:int = 100;	var expectedCurrency:Currency = new Currency(Currency.' + (key).strip() + ');	assertEquals(expectedAmount, money.amount); assertTrue(expectedCurrency.equals(money.currency)); }'

def main():
	
	with open(sys.argv[1], 'rb') as json_data:
		data = json.load(json_data)
		
	#printDict(data)
	#printConstants(data)
	printStatics(data)
	#printStaticsTest(data)
		
	json_data.close()

if __name__ == '__main__':
    main()