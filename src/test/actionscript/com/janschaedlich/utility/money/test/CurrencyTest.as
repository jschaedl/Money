package com.janschaedlich.utility.money.test
{
    import com.janschaedlich.utility.money.Currency;
    
    import org.flexunit.asserts.assertEquals;
    
    public class CurrencyTest
    {
        public function CurrencyTest()
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
        public function testMoneyConstructorShouldTakeCurrencyName():void
        {
            var currency:Currency = new Currency(Currency.EUR);
            assertEquals(Currency.EUR, currency.name);
        }
        
        [Test(expects="com.janschaedlich.utility.money.error.UnknownCurrencyError")]
        public function testCurrencyConstructorShouldRaiseAnUnknownCurrencyErrorIfCurrencyNotFound():void
        {
            var currency:Currency = new Currency('JAN');
        }
    }
}
