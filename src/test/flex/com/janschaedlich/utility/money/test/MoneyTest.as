package com.janschaedlich.utility.money.test
{	
	import com.janschaedlich.utility.money.Currency;
	import com.janschaedlich.utility.money.Money;
	
	import flexunit.framework.Assert;
	import org.flexunit.asserts.assertEquals;
	import org.flexunit.asserts.assertFalse;
	import org.flexunit.asserts.assertNotNull;
	import org.flexunit.asserts.assertTrue;
	import org.hamcrest.object.equalTo;

	public class MoneyTest
	{		
		public function MoneyTest() {
			
		}
		
		[Before]
		public function setUp():void 
		{
			
		}
		
		[After]
		public function tearDown():void
		{
			
		}
		
		[Test]
		public function testMoneyConstructorShouldTakeAmountAndCurrency():void 
		{
			var amount:int = 1000;
			var currency:Currency = new Currency('EUR');
			var money:Money = new Money(amount, currency);
			assertEquals(amount, money.amount);
			assertTrue(currency.equals(money.currency));
		}
		
		[Test(expects="com.janschaedlich.utility.money.exception.InvalidArgumentError")]
		public function testMoneyConstructorShouldThrowExceptionOnInsertDecimalAmount():void
		{
			var money:Money = new Money(0.01, new Currency('EUR'));
		}
		
		[Test]
		public function testMoneyEquality():void
		{
			var money_1:Money = new Money(100, new Currency('EUR'));
			var money_2:Money = new Money(100, new Currency('EUR'));
			var money_3:Money = new Money(100, new Currency('USD'));
			var money_4:Money = new Money(50, new Currency('EUR'));
			
			assertTrue(money_1.equals(money_2));
			
			assertFalse(money_1.equals(money_3));
			assertFalse(money_1.equals(money_4));
		}
		
		[Test]
		public function testMoneyAddition():void
		{
			var money_1:Money = new Money(100, new Currency('EUR'));
			var money_2:Money = new Money(50, new Currency('EUR'));
			var sum:Money = money_1.add(money_2);
			var expected:Money = new Money(150, new Currency('EUR'));
			
			assertEquals(expected.amount, sum.amount);
			
			// should return new instance
			assertFalse(sum === money_1);
			assertFalse(sum === money_2);
		}
		
		[Test(expects="com.janschaedlich.utility.money.exception.AddingDifferentCurrenciesNotAllowedError")]
		public function testMoneyAdditionWithDifferentCurrenciesShouldThrowError():void
		{
			var money_1:Money = new Money(100, new Currency('EUR'));
			var money_2:Money = new Money(50, new Currency('CNY'));
			var sum:Money = money_1.add(money_2);
		}
		
		public function testMoneySubtraction():void
		{
			var money_1:Money = new Money(100, new Currency('EUR'));
			var money_2:Money = new Money(50, new Currency('EUR'));
			var diff:Money = money_1.substract(money_2);
			var expected:Money = new Money(50, new Currency('EUR'));
			
			assertEquals(expected.amount, diff.amount);
			
			// should return new instance
			assertFalse(diff === money_1);
			assertFalse(diff === money_2);
		}
		
		[Test(expects="com.janschaedlich.utility.money.exception.SubstractingDifferentCurrenciesNotAllowedError")]
		public function testMoneySubstractionWithDifferentCurrenciesShouldThrowError():void
		{
			var money_1:Money = new Money(100, new Currency('EUR'));
			var money_2:Money = new Money(50, new Currency('CNY'));
			var diff:Money = money_1.substract(money_2);
		}
	}
}