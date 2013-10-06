package com.janschaedlich.utility.money 
{
	import com.janschaedlich.utility.money.exception.AddingDifferentCurrenciesNotAllowedError;
	import com.janschaedlich.utility.money.exception.InvalidArgumentError;
	import com.janschaedlich.utility.money.exception.SubstractingDifferentCurrenciesNotAllowedError;

	public class Money
	{
		private var _amount:int;
		private var _currency:Currency;
		
		public function Money(amount:Number, currency:Currency) 
		{
			if (amount is int) {
				this._amount = amount;
				this._currency = currency;
			} else {
				throw new InvalidArgumentError("only integers are allowed");
			}
		}
		
		public function get amount():int 
		{
			return _amount;
		}
		
		public function get currency():Currency 
		{
			return _currency;
		}
		
		public function equals(money:Money):Boolean 
		{
			return (this._amount == money.amount && 
				this._currency.equals(money.currency));	
		}
		
		public function add(moneyToAdd:Money):Money 
		{
			var sumAmount:int = this._amount + moneyToAdd.amount;
			var currency:Currency = moneyToAdd.currency;

			if (this._currency.equals(currency)) {
				return new Money(sumAmount, currency);
			} else {
				throw new AddingDifferentCurrenciesNotAllowedError();
			}
		}
		
		public function substract(moneyToSubstract:Money):Money 
		{
			var sumAmount:int = this._amount - moneyToSubstract.amount;
			var currency:Currency = moneyToSubstract.currency;
			
			if (this._currency.equals(currency)) {
				return new Money(sumAmount, currency);
			} else {
				throw new SubstractingDifferentCurrenciesNotAllowedError();
			}
		}
	}
}