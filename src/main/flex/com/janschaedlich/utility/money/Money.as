package com.janschaedlich.utility.money 
{
	import com.janschaedlich.utility.money.exception.InvalidArgumentError;

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
			return (this.amount == money.amount && 
				this._currency.equals(money.currency));	
		}
		
		public function add(moneyToAdd:Money):Money 
		{
			var sumAmount:int = this.amount + moneyToAdd.amount;
			var currency:Currency = moneyToAdd.currency;
			assertSameCurrencyAs(moneyToAdd);
			
			return new Money(sumAmount, currency);
		}
		
		public function substract(moneyToSubstract:Money):Money 
		{
			var sumAmount:int = this.amount - moneyToSubstract.amount;
			var currency:Currency = moneyToSubstract.currency;
			assertSameCurrencyAs(moneyToSubstract);
			
			return new Money(sumAmount, currency);
			
		}
		
		public function multiply(factor:Number):Money 
		{
			return new Money(this.amount * factor, this.currency);
		}
		
		public function compareTo(moneyToCompareMoney:Money):int
		{
			assertSameCurrencyAs(moneyToCompareMoney);
			
			return (this.amount == moneyToCompareMoney.amount ? 0 : 
				(this.amount < moneyToCompareMoney.amount ? -1 : 1));
		}
		
		public function greaterThan(moneyToCompareMoney:Money):Boolean 
		{
			return (this.compareTo(moneyToCompareMoney) == 1);
		}
		public function lessThan(moneyToCompareMoney:Money):Boolean 
		{
			return (this.compareTo(moneyToCompareMoney) == -1);
		}
		
		private function assertSameCurrencyAs(money:Money):void
		{
			if (!currency.equals(money.currency)) {
				throw new Error("Operation permitted, caused by different currencies.")
			}
		}
	}
}