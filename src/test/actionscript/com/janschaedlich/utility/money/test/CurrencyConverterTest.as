package com.janschaedlich.utility.money.test
{
    import com.janschaedlich.utility.money.Currency;
    import com.janschaedlich.utility.money.CurrencyConverter;
    import com.janschaedlich.utility.money.Money;
    import com.janschaedlich.utility.money.MoneyBuilder;
    
    import org.flexunit.asserts.assertEquals;
    
    public class CurrencyConverterTest
    {
        public function CurrencyConverterTest()
        {
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
        public function testCurrencyConverterCostructurShouldTakeCurrencyPair():void
        {
			var currencyIn:Currency = new Currency(Currency.EUR);
			var currencyOut:Currency = new Currency(Currency.USD);
			var rate:Number = 1.36;
            var currencyConverter:CurrencyConverter = new CurrencyConverter(currencyIn, currencyOut, rate);
			var convertedMoney_1:Money = currencyConverter.convert(MoneyBuilder.EUR(100)); // convert to USD
			var convertedMoney_2:Money = currencyConverter.convert(MoneyBuilder.USD(100)); // convert to EUR
			var expectedMoney_1:Money = MoneyBuilder.EUR(136);
			var expectedMoney_2:Money = MoneyBuilder.USD(74);
			
			assertEquals(expectedMoney_1.amount, convertedMoney_1.amount);
			assertEquals(Currency.USD, convertedMoney_1.currency.name);
			assertEquals(expectedMoney_2.amount, convertedMoney_2.amount);
			assertEquals(Currency.EUR, convertedMoney_2.currency.name);
		}
    }
}
