package com.janschaedlich.utility.money.test
{
    import com.janschaedlich.utility.money.Currency;
    import com.janschaedlich.utility.money.Money;
    import com.janschaedlich.utility.money.MoneyBuilder;
    
    import mx.collections.ArrayCollection;
    
    import org.flexunit.asserts.assertEquals;
    import org.flexunit.asserts.assertFalse;
    import org.flexunit.asserts.assertTrue;
    
    public class MoneyTest
    {
        [Test]
        public function testMoneyConstructorShouldTakeAmountAndCurrency():void
        {
            var amount:int = 1000;
            var currency:Currency = new Currency(Currency.EUR);
            var money:Money = new Money(amount, currency);
			
            assertEquals(amount, money.amount);
            assertTrue(currency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyEquality():void
        {
            var money_1:Money = new Money(100, new Currency(Currency.EUR));
            var money_2:Money = new Money(100, new Currency(Currency.EUR));
            var money_3:Money = new Money(100, new Currency(Currency.USD));
            var money_4:Money = new Money(50, new Currency(Currency.EUR));
			
            assertTrue(money_1.equals(money_2));
            assertFalse(money_1.equals(money_3));
            assertFalse(money_1.equals(money_4));
        }
        
        [Test]
        public function testMoneyAddition():void
        {
            var money_1:Money = new Money(100, new Currency(Currency.EUR));
            var money_2:Money = new Money(50, new Currency(Currency.EUR));
            var sum:Money = money_1.add(money_2);
            var expected:Money = new Money(150, new Currency(Currency.EUR));
			
            assertEquals(expected.amount, sum.amount);
            assertFalse(sum === money_1);
            assertFalse(sum === money_2);
        }
        
        [Test(expects="Error")]
        public function testMoneyAdditionWithDifferentCurrenciesShouldThrowError():void
        {
            var money_1:Money = new Money(100, new Currency(Currency.EUR));
            var money_2:Money = new Money(50, new Currency(Currency.CNY));
            var sum:Money = money_1.add(money_2);
        }
        
        [Test]
        public function testMoneySubtraction():void
        {
            var money_1:Money = new Money(100, new Currency(Currency.EUR));
            var money_2:Money = new Money(50, new Currency(Currency.EUR));
            var diff:Money = money_1.substract(money_2);
            var expected:Money = new Money(50, new Currency(Currency.EUR));
			
            assertEquals(expected.amount, diff.amount);
            assertFalse(diff === money_1);
            assertFalse(diff === money_2);
        }
        
        [Test(expects="Error")]
        public function testMoneySubstractionWithDifferentCurrenciesShouldThrowError():void
        {
            var money_1:Money = new Money(100, new Currency(Currency.EUR));
            var money_2:Money = new Money(50, new Currency(Currency.CNY));
            var diff:Money = money_1.substract(money_2);
        }
        
        [Test]
        public function testMoneyMultiplicationWithIntFactor():void
        {
            var money:Money = new Money(100, new Currency(Currency.EUR));
            var product:Money = money.multiply(2);
            var expected:Money = new Money(200, new Currency(Currency.EUR));
			
            assertEquals(expected.amount, product.amount);
            assertFalse(product === money);
        }
        
        [Test]
        public function testMoneyMultiplicationWithDecimalFactor():void
        {
            var money:Money = new Money(100, new Currency(Currency.EUR));
            var product:Money = money.multiply(2.5);
            var expected:Money = new Money(250, new Currency(Currency.EUR));
			
            assertEquals(expected.amount, product.amount);
            assertFalse(product === money);
        }
        
        [Test]
        public function testMoneyComparison():void
        {
            var euro_1:Money = new Money(1, new Currency(Currency.EUR));
            var euro_2:Money = new Money(2, new Currency(Currency.EUR));
            var euro_3:Money = new Money(2, new Currency(Currency.EUR));
			
            assertEquals(-1, euro_1.compareTo(euro_2));
            assertEquals(1, euro_2.compareTo(euro_1));
            assertEquals(0, euro_2.compareTo(euro_3));
        }
        
        [Test(expects="Error")]
        public function testMoneyCompareDifferentCurrencies():void
        {
            var euro:Money = new Money(1, new Currency(Currency.EUR));
            var yuan:Money = new Money(2, new Currency(Currency.CNY));
            euro.compareTo(yuan);
        }
        
        [Test]
        public function testMoneyAdvancedComparison():void
        {
            var euro_1:Money = new Money(1, new Currency(Currency.EUR));
            var euro_2:Money = new Money(2, new Currency(Currency.EUR));
			
            assertTrue(euro_2.greaterThan(euro_1));
            assertFalse(euro_1.greaterThan(euro_2));
            assertTrue(euro_1.lessThan(euro_2));
            assertFalse(euro_2.lessThan(euro_1));
        }
        
        [Test]
        public function testMoneyDivision():void
        {
            var money:Money = new Money(100, new Currency(Currency.EUR));
            var result:ArrayCollection = money.divide(3);
            var expected_0:Money = new Money(34, new Currency(Currency.EUR));
            var expected_1:Money = new Money(33, new Currency(Currency.EUR));
            var expected_2:Money = new Money(33, new Currency(Currency.EUR));
			
            assertEquals(expected_0.amount, Money(result.getItemAt(0)).amount);
            assertEquals(expected_1.amount, Money(result.getItemAt(1)).amount);
            assertEquals(expected_2.amount, Money(result.getItemAt(2)).amount);
        }
        
        [Test]
        public function testMoneyComporation():void
        {
            var moneyIsZero:Money = new Money(0, new Currency(Currency.EUR));
            var moneyIsPositive:Money = new Money(1, new Currency(Currency.EUR));
            var moneyIsNegative:Money = new Money(-1, new Currency(Currency.EUR));
			
            assertTrue(moneyIsZero.isZero());
            assertTrue(moneyIsPositive.isPositive());
            assertTrue(moneyIsNegative.isNegative());
        }
        
        [Test(expects="com.janschaedlich.utility.money.error.InvalidArgumentError")]
        public function testMoneyAllocationWithWrongAllocationArgs():void
        {
            var money:Money = new Money(100, new Currency(Currency.EUR));
            var allocatedMonies:ArrayCollection = money.allocate(10, 10);
        }
        
        [Test]
        public function testMoneyAllocation():void
        {
            var money:Money = new Money(100, new Currency(Currency.EUR));
            var allocatedMonies:ArrayCollection = money.allocate(10, 10, 35, 45);
            var expected_0:Money = new Money(10, new Currency(Currency.EUR));
            var expected_1:Money = new Money(10, new Currency(Currency.EUR));
            var expected_2:Money = new Money(35, new Currency(Currency.EUR));
            var expected_4:Money = new Money(45, new Currency(Currency.EUR));
			
            assertEquals(expected_0.amount, Money(allocatedMonies.getItemAt(0)).amount);
            assertEquals(expected_1.amount, Money(allocatedMonies.getItemAt(1)).amount);
            assertEquals(expected_2.amount, Money(allocatedMonies.getItemAt(2)).amount);
            assertEquals(expected_4.amount, Money(allocatedMonies.getItemAt(3)).amount);
        }
        
        [Test]
        public function testMoneyAllocationAdvanced():void
        {
            var money:Money = new Money(88, new Currency(Currency.EUR));
            var allocatedMonies:ArrayCollection = money.allocate(10, 10, 35, 45);
            var expected_0:Money = new Money(8, new Currency(Currency.EUR));
            var expected_1:Money = new Money(8, new Currency(Currency.EUR));
            var expected_2:Money = new Money(30, new Currency(Currency.EUR));
            var expected_4:Money = new Money(39, new Currency(Currency.EUR));
            var expected_5:Money = new Money(3, new Currency(Currency.EUR));
			
            assertEquals(expected_0.amount, Money(allocatedMonies.getItemAt(0)).amount);
            assertEquals(expected_1.amount, Money(allocatedMonies.getItemAt(1)).amount);
            assertEquals(expected_2.amount, Money(allocatedMonies.getItemAt(2)).amount);
            assertEquals(expected_4.amount, Money(allocatedMonies.getItemAt(3)).amount);
            assertEquals(expected_5.amount, Money(allocatedMonies.getItemAt(4)).amount);
        }
		
		[Test]
		public function testFluintInterface():void
		{
			var money_1:Money = MoneyBuilder.EUR(10000);
			var money_2:Money = MoneyBuilder.EUR(500);
			var money_3:Money = MoneyBuilder.EUR(500);
			var moneyResult:Money = money_1.add(money_2).substract(money_3).multiply(5);			
			var moneyExpected:Money = MoneyBuilder.EUR(50000);
			
			assertTrue(moneyExpected.equals(moneyResult));
		}
    }
}
