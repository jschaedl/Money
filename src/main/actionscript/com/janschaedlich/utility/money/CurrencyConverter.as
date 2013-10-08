package com.janschaedlich.utility.money
{
	import com.janschaedlich.utility.money.error.InvalidArgumentError;

	public class CurrencyConverter
	{
		private var _currencyIn:Currency;
		private var _currencyOut:Currency;
		private var _rate:Number;
		
		public function CurrencyConverter(currencyIn:Currency, currencyOut:Currency, rate:Number)
		{
			this._currencyIn = currencyIn;
			this._currencyOut = currencyOut;
			this._rate = rate;
		}
		
		public function convert(moneyToConvert:Money):Money
		{
			var convertedMoney:Money;
			if (moneyToConvert.currency.equals(this._currencyIn)) 
			{
				convertedMoney = convertCurrency(moneyToConvert);
			} 
			else if (moneyToConvert.currency.equals(this._currencyOut)) 
			{
				convertedMoney = reverseConvertCurrency(moneyToConvert);
			} 
			else 
			{
				throw new InvalidArgumentError("Currency could not be converted. No matching currency pair available.");
			}
			
			return convertedMoney;
		}
		
		private function convertCurrency(moneyToConvert:Money):Money
		{
			return new Money(Math.round(moneyToConvert.amount * this._rate), 
				this._currencyOut);
		}
		
		private function reverseConvertCurrency(moneyToConvert:Money):Money
		{
			return new Money(Math.round(moneyToConvert.amount / this._rate), 
				this._currencyIn);
		}
	}
}