package com.janschaedlich.utility.money
{
    import com.janschaedlich.utility.money.error.InvalidArgumentError;
    
    import mx.collections.ArrayCollection;
    
    public class Money
    {
        private var _amount:int;
        
        private var _currency:Currency;
        
        public function Money(amount:int, currency:Currency)
        {
            this._amount=amount;
            this._currency=currency;
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
            return (this.amount == money.amount 
				&& this._currency.equals(money.currency));
        }
        
        public function add(moneyToAdd:Money):Money
        {
            assertSameCurrencyAs(moneyToAdd);
			
            return new Money(this.amount + moneyToAdd.amount, 
				moneyToAdd.currency);
        }
        
        public function substract(moneyToSubstract:Money):Money
        {
            assertSameCurrencyAs(moneyToSubstract);
			
            return new Money(this.amount - moneyToSubstract.amount,
				moneyToSubstract.currency);
        }
        
        public function multiply(factor:Number):Money
        {
            return new Money(this.amount * factor, 
				this.currency);
        }
        
        public function divide(denominator:int):ArrayCollection
        {
            var result:ArrayCollection = new ArrayCollection();
            var simpleResult:int = this.amount / denominator;
			var money:Money = new Money(simpleResult, this.currency)
            for (var i:int = 0; i < denominator; i++)
                result.addItem(money);
			
            var remainder:int = this.amount - (simpleResult * denominator);
			var rest:Money = new Money(1, this.currency);
            for (var j:int = 0; j < remainder; j++)
            {
                result.setItemAt(result.getItemAt(j).add(rest), j);
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
            var sumAmount:Number = 0;
            for (var i:uint = 0; i < rest.length; i++)
            {
                allocatedMonies.addItem(new Money(Math.floor((this.amount * rest[i]) / 100), this.currency));
				sumAmount+=Math.floor((this.amount * rest[i]) / 100);
            }
			
            var loosenPennies:Number = this.amount - sumAmount;
            if (loosenPennies > 0)
            {
                allocatedMonies.addItem(new Money(loosenPennies, this.currency));
            }
			
            return allocatedMonies;
        }
        
        private function assertAllocationArgsSum(args:Array):void
        {
            var sum:Number = 0;
            for (var i:uint = 0; i < args.length; i++)
            {
                sum+=parseInt(args[i]);
            }
            
            if (sum != 100)
            {
                throw new InvalidArgumentError("Allocation values should be hundred in addition.");
            }
        }
        
        private function assertSameCurrencyAs(money:Money):void
        {
            if (!currency.equals(money.currency))
            {
                throw new Error("Operation permitted, caused by different currencies.");
            }
        }
    }
}
