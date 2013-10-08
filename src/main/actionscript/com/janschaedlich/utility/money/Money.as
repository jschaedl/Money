package com.janschaedlich.utility.money 
{
	import com.janschaedlich.utility.money.exception.InvalidArgumentError;
	
	import mx.collections.ArrayCollection;

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
		
		public function divide(denominator:int):ArrayCollection 
		{
			var result:ArrayCollection = new ArrayCollection();
			var simpleResult:int = this.amount / denominator;
			for (var i:int = 0; i < denominator; i++) {
				result.addItem(new Money(simpleResult, this.currency));
			}
			var remainder:int = this.amount - (simpleResult * denominator);
			for (var j:int = 0; j < remainder; j++) {
				result.setItemAt(result.getItemAt(j).add(new Money(1, this.currency)), j);
			}
			return result;
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
		
		public function isZero():Boolean
		{
			return this.amount === 0;
		}
		
		public function isPositive():Boolean
		{
			return this.amount > 0;
		}
		
		public function isNegative():Boolean
		{
			return this.amount < 0;
		}
		
		public function allocate(... rest):ArrayCollection
		{
			assertAllocationArgsSum(rest);
			
			var allocatedMonies:ArrayCollection = new ArrayCollection();
			var tempAmount:Number = 0;
			for (var i:uint = 0; i < rest.length; i++)  {
				allocatedMonies.addItem(new Money(Math.floor((this.amount*rest[i])/100), this.currency));
				tempAmount += Math.floor((this.amount*rest[i])/100);
			}
			
			var loosenPennies:Number = this.amount - tempAmount;
			if (loosenPennies > 0) {
				allocatedMonies.addItem(new Money(loosenPennies, this.currency));
			}
			
			return allocatedMonies;			
		}
		
		private function assertAllocationArgsSum(args:Array):void
		{
			var sum:Number = 0;
			for (var i:uint = 0; i < args.length; i++) {
				sum += parseInt(args[i]);
			}
			
			if (sum != 100) {
				throw new Error("Allocation values should be hundred in addition. sum=" + sum + " rest=" + args);
			}
		}
		
		private function assertSameCurrencyAs(money:Money):void
		{
			if (!currency.equals(money.currency)) {
				throw new Error("Operation permitted, caused by different currencies.");
			}
		}
	}
	
	
	
	
	
	
	
}