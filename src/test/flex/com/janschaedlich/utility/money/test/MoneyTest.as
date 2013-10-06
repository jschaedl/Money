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
		
		[Test(expects="Error")]
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
		
		[Test(expects="Error")]
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
		
		[Test(expects="Error")]
		public function testMoneySubstractionWithDifferentCurrenciesShouldThrowError():void
		{
			var money_1:Money = new Money(100, new Currency('EUR'));
			var money_2:Money = new Money(50, new Currency('CNY'));
			var diff:Money = money_1.substract(money_2);
		}
		
		[Test]
		public function testMoneyMultiplication():void
		{
			var money:Money = new Money(100, new Currency('EUR'));
			var product:Money = money.multiply(2);
			var expected:Money = new Money(200, new Currency('EUR'));
			
			assertEquals(expected.amount, product.amount);
			
			// should return new instance
			assertFalse(product === money);
		}
		
		[Test]
		public function testMoneyComparison():void
		{
			var euro_1:Money = new Money(1, new Currency('EUR'));
			var euro_2:Money = new Money(2, new Currency('EUR'));
			var euro_3:Money = new Money(2, new Currency('EUR'));
				
			assertEquals(-1, euro_1.compareTo(euro_2));
			assertEquals(1, euro_2.compareTo(euro_1));
			assertEquals(0, euro_2.compareTo(euro_3));
		}
		
		[Test(expects="Error")]
		public function testMoneyCompareDifferentCurrencies():void
		{
			var euro:Money = new Money(1, new Currency('EUR'));
			var yuan:Money = new Money(2, new Currency('CNY'));
			
			euro.compareTo(yuan);
		}
		
		[Test]
		public function testMoneyAdvancedComparison():void
		{
			var euro_1:Money = new Money(1, new Currency('EUR'));
			var euro_2:Money = new Money(2, new Currency('EUR'));
			
			assertTrue(euro_2.greaterThan(euro_1));
			assertFalse(euro_1.greaterThan(euro_2));
			assertTrue(euro_1.lessThan(euro_2));
			assertFalse(euro_2.lessThan(euro_1));
		}
	}
}