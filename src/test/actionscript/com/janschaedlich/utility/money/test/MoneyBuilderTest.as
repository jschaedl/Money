package com.janschaedlich.utility.money.test
{
    import com.janschaedlich.utility.money.Currency;
    import com.janschaedlich.utility.money.Money;
    import com.janschaedlich.utility.money.MoneyBuilder;
    
    import org.flexunit.asserts.assertEquals;
    import org.flexunit.asserts.assertTrue;
    
    public class MoneyBuilderTest
    {
        public function MoneyBuilderTest()
        {
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
        public function testMoneyBuilderDZD():void
        {
            var money:Money = MoneyBuilder.DZD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.DZD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderNAD():void
        {
            var money:Money = MoneyBuilder.NAD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.NAD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderGHS():void
        {
            var money:Money = MoneyBuilder.GHS(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.GHS);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderEGP():void
        {
            var money:Money = MoneyBuilder.EGP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.EGP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBGN():void
        {
            var money:Money = MoneyBuilder.BGN(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BGN);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderPAB():void
        {
            var money:Money = MoneyBuilder.PAB(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.PAB);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBOB():void
        {
            var money:Money = MoneyBuilder.BOB(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BOB);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderDKK():void
        {
            var money:Money = MoneyBuilder.DKK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.DKK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBWP():void
        {
            var money:Money = MoneyBuilder.BWP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BWP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderLBP():void
        {
            var money:Money = MoneyBuilder.LBP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.LBP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderTZS():void
        {
            var money:Money = MoneyBuilder.TZS(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.TZS);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderVND():void
        {
            var money:Money = MoneyBuilder.VND(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.VND);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderAOA():void
        {
            var money:Money = MoneyBuilder.AOA(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.AOA);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderKHR():void
        {
            var money:Money = MoneyBuilder.KHR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.KHR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMYR():void
        {
            var money:Money = MoneyBuilder.MYR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MYR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderKYD():void
        {
            var money:Money = MoneyBuilder.KYD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.KYD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderLYD():void
        {
            var money:Money = MoneyBuilder.LYD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.LYD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderUAH():void
        {
            var money:Money = MoneyBuilder.UAH(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.UAH);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderJOD():void
        {
            var money:Money = MoneyBuilder.JOD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.JOD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderAWG():void
        {
            var money:Money = MoneyBuilder.AWG(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.AWG);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSAR():void
        {
            var money:Money = MoneyBuilder.SAR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SAR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderEUR():void
        {
            var money:Money = MoneyBuilder.EUR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.EUR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderHKD():void
        {
            var money:Money = MoneyBuilder.HKD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.HKD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCHF():void
        {
            var money:Money = MoneyBuilder.CHF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.CHF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderGIP():void
        {
            var money:Money = MoneyBuilder.GIP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.GIP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBYR():void
        {
            var money:Money = MoneyBuilder.BYR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BYR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderALL():void
        {
            var money:Money = MoneyBuilder.ALL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.ALL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMRO():void
        {
            var money:Money = MoneyBuilder.MRO(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MRO);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderHRK():void
        {
            var money:Money = MoneyBuilder.HRK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.HRK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderDJF():void
        {
            var money:Money = MoneyBuilder.DJF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.DJF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSZL():void
        {
            var money:Money = MoneyBuilder.SZL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SZL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderTHB():void
        {
            var money:Money = MoneyBuilder.THB(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.THB);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderXAF():void
        {
            var money:Money = MoneyBuilder.XAF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.XAF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBND():void
        {
            var money:Money = MoneyBuilder.BND(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BND);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderISK():void
        {
            var money:Money = MoneyBuilder.ISK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.ISK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderUYU():void
        {
            var money:Money = MoneyBuilder.UYU(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.UYU);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderNIO():void
        {
            var money:Money = MoneyBuilder.NIO(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.NIO);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderLAK():void
        {
            var money:Money = MoneyBuilder.LAK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.LAK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSYP():void
        {
            var money:Money = MoneyBuilder.SYP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SYP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMAD():void
        {
            var money:Money = MoneyBuilder.MAD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MAD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMZN():void
        {
            var money:Money = MoneyBuilder.MZN(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MZN);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderPHP():void
        {
            var money:Money = MoneyBuilder.PHP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.PHP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderZAR():void
        {
            var money:Money = MoneyBuilder.ZAR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.ZAR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderNPR():void
        {
            var money:Money = MoneyBuilder.NPR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.NPR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderZWL():void
        {
            var money:Money = MoneyBuilder.ZWL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.ZWL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderNGN():void
        {
            var money:Money = MoneyBuilder.NGN(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.NGN);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCRC():void
        {
            var money:Money = MoneyBuilder.CRC(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.CRC);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderAED():void
        {
            var money:Money = MoneyBuilder.AED(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.AED);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderEEK():void
        {
            var money:Money = MoneyBuilder.EEK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.EEK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMWK():void
        {
            var money:Money = MoneyBuilder.MWK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MWK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderLKR():void
        {
            var money:Money = MoneyBuilder.LKR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.LKR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderPKR():void
        {
            var money:Money = MoneyBuilder.PKR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.PKR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderHUF():void
        {
            var money:Money = MoneyBuilder.HUF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.HUF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBMD():void
        {
            var money:Money = MoneyBuilder.BMD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BMD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderLSL():void
        {
            var money:Money = MoneyBuilder.LSL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.LSL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMNT():void
        {
            var money:Money = MoneyBuilder.MNT(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MNT);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderAMD():void
        {
            var money:Money = MoneyBuilder.AMD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.AMD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderUGX():void
        {
            var money:Money = MoneyBuilder.UGX(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.UGX);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderQAR():void
        {
            var money:Money = MoneyBuilder.QAR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.QAR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderXDR():void
        {
            var money:Money = MoneyBuilder.XDR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.XDR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderJMD():void
        {
            var money:Money = MoneyBuilder.JMD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.JMD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderGEL():void
        {
            var money:Money = MoneyBuilder.GEL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.GEL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSHP():void
        {
            var money:Money = MoneyBuilder.SHP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SHP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderAFN():void
        {
            var money:Money = MoneyBuilder.AFN(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.AFN);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSBD():void
        {
            var money:Money = MoneyBuilder.SBD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SBD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderKPW():void
        {
            var money:Money = MoneyBuilder.KPW(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.KPW);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderTRY():void
        {
            var money:Money = MoneyBuilder.TRY(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.TRY);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBDT():void
        {
            var money:Money = MoneyBuilder.BDT(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BDT);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderYER():void
        {
            var money:Money = MoneyBuilder.YER(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.YER);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderHTG():void
        {
            var money:Money = MoneyBuilder.HTG(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.HTG);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderXOF():void
        {
            var money:Money = MoneyBuilder.XOF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.XOF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMGA():void
        {
            var money:Money = MoneyBuilder.MGA(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MGA);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderANG():void
        {
            var money:Money = MoneyBuilder.ANG(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.ANG);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderLRD():void
        {
            var money:Money = MoneyBuilder.LRD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.LRD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderRWF():void
        {
            var money:Money = MoneyBuilder.RWF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.RWF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderNOK():void
        {
            var money:Money = MoneyBuilder.NOK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.NOK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMOP():void
        {
            var money:Money = MoneyBuilder.MOP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MOP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderINR():void
        {
            var money:Money = MoneyBuilder.INR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.INR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMXN():void
        {
            var money:Money = MoneyBuilder.MXN(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MXN);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCZK():void
        {
            var money:Money = MoneyBuilder.CZK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.CZK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderTJS():void
        {
            var money:Money = MoneyBuilder.TJS(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.TJS);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBTC():void
        {
            var money:Money = MoneyBuilder.BTC(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BTC);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBTN():void
        {
            var money:Money = MoneyBuilder.BTN(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BTN);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCOP():void
        {
            var money:Money = MoneyBuilder.COP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.COP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderTMT():void
        {
            var money:Money = MoneyBuilder.TMT(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.TMT);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMUR():void
        {
            var money:Money = MoneyBuilder.MUR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MUR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderIDR():void
        {
            var money:Money = MoneyBuilder.IDR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.IDR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderHNL():void
        {
            var money:Money = MoneyBuilder.HNL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.HNL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderXPF():void
        {
            var money:Money = MoneyBuilder.XPF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.XPF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderFJD():void
        {
            var money:Money = MoneyBuilder.FJD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.FJD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderETB():void
        {
            var money:Money = MoneyBuilder.ETB(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.ETB);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderPEN():void
        {
            var money:Money = MoneyBuilder.PEN(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.PEN);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBZD():void
        {
            var money:Money = MoneyBuilder.BZD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BZD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderILS():void
        {
            var money:Money = MoneyBuilder.ILS(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.ILS);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderDOP():void
        {
            var money:Money = MoneyBuilder.DOP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.DOP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderTWD():void
        {
            var money:Money = MoneyBuilder.TWD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.TWD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMDL():void
        {
            var money:Money = MoneyBuilder.MDL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MDL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBSD():void
        {
            var money:Money = MoneyBuilder.BSD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BSD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSEK():void
        {
            var money:Money = MoneyBuilder.SEK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SEK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderZMK():void
        {
            var money:Money = MoneyBuilder.ZMK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.ZMK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderJEP():void
        {
            var money:Money = MoneyBuilder.JEP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.JEP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderAUD():void
        {
            var money:Money = MoneyBuilder.AUD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.AUD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSRD():void
        {
            var money:Money = MoneyBuilder.SRD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SRD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCUP():void
        {
            var money:Money = MoneyBuilder.CUP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.CUP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCLF():void
        {
            var money:Money = MoneyBuilder.CLF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.CLF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBBD():void
        {
            var money:Money = MoneyBuilder.BBD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BBD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderKMF():void
        {
            var money:Money = MoneyBuilder.KMF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.KMF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderKRW():void
        {
            var money:Money = MoneyBuilder.KRW(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.KRW);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderGMD():void
        {
            var money:Money = MoneyBuilder.GMD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.GMD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderVEF():void
        {
            var money:Money = MoneyBuilder.VEF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.VEF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderGTQ():void
        {
            var money:Money = MoneyBuilder.GTQ(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.GTQ);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCLP():void
        {
            var money:Money = MoneyBuilder.CLP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.CLP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderZMW():void
        {
            var money:Money = MoneyBuilder.ZMW(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.ZMW);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderLTL():void
        {
            var money:Money = MoneyBuilder.LTL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.LTL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCDF():void
        {
            var money:Money = MoneyBuilder.CDF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.CDF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderXCD():void
        {
            var money:Money = MoneyBuilder.XCD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.XCD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderKZT():void
        {
            var money:Money = MoneyBuilder.KZT(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.KZT);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderRUB():void
        {
            var money:Money = MoneyBuilder.RUB(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.RUB);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderXAG():void
        {
            var money:Money = MoneyBuilder.XAG(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.XAG);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderTTD():void
        {
            var money:Money = MoneyBuilder.TTD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.TTD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderOMR():void
        {
            var money:Money = MoneyBuilder.OMR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.OMR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBRL():void
        {
            var money:Money = MoneyBuilder.BRL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BRL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMMK():void
        {
            var money:Money = MoneyBuilder.MMK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MMK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderPLN():void
        {
            var money:Money = MoneyBuilder.PLN(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.PLN);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderPYG():void
        {
            var money:Money = MoneyBuilder.PYG(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.PYG);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderKES():void
        {
            var money:Money = MoneyBuilder.KES(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.KES);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSVC():void
        {
            var money:Money = MoneyBuilder.SVC(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SVC);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMKD():void
        {
            var money:Money = MoneyBuilder.MKD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MKD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderGBP():void
        {
            var money:Money = MoneyBuilder.GBP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.GBP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderAZN():void
        {
            var money:Money = MoneyBuilder.AZN(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.AZN);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderTOP():void
        {
            var money:Money = MoneyBuilder.TOP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.TOP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMVR():void
        {
            var money:Money = MoneyBuilder.MVR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MVR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderVUV():void
        {
            var money:Money = MoneyBuilder.VUV(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.VUV);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderGNF():void
        {
            var money:Money = MoneyBuilder.GNF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.GNF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderWST():void
        {
            var money:Money = MoneyBuilder.WST(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.WST);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderIQD():void
        {
            var money:Money = MoneyBuilder.IQD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.IQD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBAM():void
        {
            var money:Money = MoneyBuilder.BAM(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BAM);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSCR():void
        {
            var money:Money = MoneyBuilder.SCR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SCR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCAD():void
        {
            var money:Money = MoneyBuilder.CAD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.CAD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCVE():void
        {
            var money:Money = MoneyBuilder.CVE(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.CVE);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderKWD():void
        {
            var money:Money = MoneyBuilder.KWD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.KWD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBIF():void
        {
            var money:Money = MoneyBuilder.BIF(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BIF);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderPGK():void
        {
            var money:Money = MoneyBuilder.PGK(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.PGK);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSOS():void
        {
            var money:Money = MoneyBuilder.SOS(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SOS);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSGD():void
        {
            var money:Money = MoneyBuilder.SGD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SGD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderUZS():void
        {
            var money:Money = MoneyBuilder.UZS(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.UZS);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSTD():void
        {
            var money:Money = MoneyBuilder.STD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.STD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderIRR():void
        {
            var money:Money = MoneyBuilder.IRR(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.IRR);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderCNY():void
        {
            var money:Money = MoneyBuilder.CNY(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.CNY);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSLL():void
        {
            var money:Money = MoneyBuilder.SLL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SLL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderTND():void
        {
            var money:Money = MoneyBuilder.TND(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.TND);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderGYD():void
        {
            var money:Money = MoneyBuilder.GYD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.GYD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderMTL():void
        {
            var money:Money = MoneyBuilder.MTL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.MTL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderNZD():void
        {
            var money:Money = MoneyBuilder.NZD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.NZD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderFKP():void
        {
            var money:Money = MoneyBuilder.FKP(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.FKP);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderLVL():void
        {
            var money:Money = MoneyBuilder.LVL(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.LVL);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderUSD():void
        {
            var money:Money = MoneyBuilder.USD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.USD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderKGS():void
        {
            var money:Money = MoneyBuilder.KGS(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.KGS);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderARS():void
        {
            var money:Money = MoneyBuilder.ARS(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.ARS);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderRON():void
        {
            var money:Money = MoneyBuilder.RON(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.RON);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderRSD():void
        {
            var money:Money = MoneyBuilder.RSD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.RSD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderBHD():void
        {
            var money:Money = MoneyBuilder.BHD(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.BHD);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderJPY():void
        {
            var money:Money = MoneyBuilder.JPY(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.JPY);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderSDG():void
        {
            var money:Money = MoneyBuilder.SDG(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.SDG);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
        
        [Test]
        public function testMoneyBuilderXAU():void
        {
            var money:Money = MoneyBuilder.XAU(100);
            var expectedAmount:int = 100;
            var expectedCurrency:Currency = new Currency(Currency.XAU);
            assertEquals(expectedAmount, money.amount);
            assertTrue(expectedCurrency.equals(money.currency));
        }
    }
}
