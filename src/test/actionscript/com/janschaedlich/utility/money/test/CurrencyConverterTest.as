package com.janschaedlich.utility.money.test
{
    import com.janschaedlich.utility.money.Currency;
    import com.janschaedlich.utility.money.CurrencyConverter;
    import com.janschaedlich.utility.money.Money;
    import com.janschaedlich.utility.money.MoneyBuilder;
    
    import org.flexunit.asserts.assertEquals;
    
    public class CurrencyConverterTest
    {
		private var currencyIn:Currency;
		private var currencyOut:Currency;
		private var rate:Number;
		private var currencyConverter:CurrencyConverter;
        
        [Before]
        public function setUp():void
        {
			this.currencyIn = new Currency(Currency.EUR);
			this.currencyOut = new Currency(Currency.USD);
			this.rate = 1.36;
			this.currencyConverter = new CurrencyConverter(this.currencyIn, this.currencyOut, this.rate);
        }
        
        [After]
        public function tearDown():void
        {
			this.currencyIn = null;
			this.currencyOut = null;
			this.currencyConverter = null;
        }
		
		[Test]
		public function testCurrencyConversion():void
		{
			var convertedInDollar:Money = this.currencyConverter.convert(MoneyBuilder.EUR(100)); // convert to USD
			var convertedInEuro:Money = this.currencyConverter.convert(MoneyBuilder.USD(100)); // convert to EUR
			var expectedEuro:Money = MoneyBuilder.EUR(136);
			var expectedDollar:Money = MoneyBuilder.USD(74);
			
			assertEquals(expectedEuro.amount, convertedInDollar.amount);
			assertEquals(Currency.USD, convertedInDollar.currency.name);
			assertEquals(expectedDollar.amount, convertedInEuro.amount);
			assertEquals(Currency.EUR, convertedInEuro.currency.name);
		}
		
		[Test(expects="com.janschaedlich.utility.money.error.InvalidArgumentError")]
		public function testCurrencyConversionWithMissingCurrency():void
		{
			this.currencyConverter.convert(MoneyBuilder.CNY(100));
		}
    }
}
