package com.janschaedlich.utility.money.test
{
    import com.janschaedlich.utility.money.Currency;
    
    import org.flexunit.asserts.assertEquals;
    
    public class CurrencyTest
    {   
        [Test]
        public function testCurrencyConstructorShouldTakeCurrencyName():void
        {
            var currency:Currency = new Currency(Currency.EUR);
            assertEquals(Currency.EUR, currency.name);
        }
        
        [Test(expects="com.janschaedlich.utility.money.error.UnknownCurrencyError")]
        public function testCurrencyConstructorShouldRaiseAnUnknownCurrencyErrorIfCurrencyNotFound():void
        {
            new Currency('JAN');
        }
    }
}
