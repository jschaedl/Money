package com.janschaedlich.utility.money.test
{
	import com.janschaedlich.utility.money.Currency;
	
	import org.flexunit.asserts.assertEquals;

	public class CurrencyTest
	{		
		public function CurrencyTest() {
			
		}
		
		[Before]
		public function setUp():void 
		{
			
		}
		
		[Before]
		public function tearDown():void 
		{
			
		}
		
		[Test]
		public function moneyConstructorShouldTakeCurrencyName():void
		{
			var name:String = 'EUR';
			var currency:Currency = new Currency(name);	
			assertEquals(name, currency.name);
		}
		
		[Test(expects="com.janschaedlich.utility.money.exception.UnknownCurrencyError")]
		public function currencyConstructorShouldRaiseAnUnknownCurrencyErrorIfCurrencyNotFound():void 
		{
			var currency:Currency = new Currency('JAN');
		}
	}
}