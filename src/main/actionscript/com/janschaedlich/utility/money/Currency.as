package com.janschaedlich.utility.money
{
    import com.janschaedlich.utility.money.error.UnknownCurrencyError;
    
    import flash.utils.Dictionary;
    
    public class Currency
    {
        private var _name:String;
        
        private static var currencies:Dictionary;
        
        // list available on http://openexchangerates.org/api/currencies.json
        public static const DZD:String = "DZD";
        
        public static const NAD:String = "NAD";
        
        public static const GHS:String = "GHS";
        
        public static const EGP:String = "EGP";
        
        public static const BGN:String = "BGN";
        
        public static const PAB:String = "PAB";
        
        public static const BOB:String = "BOB";
        
        public static const DKK:String = "DKK";
        
        public static const BWP:String = "BWP";
        
        public static const LBP:String = "LBP";
        
        public static const TZS:String = "TZS";
        
        public static const VND:String = "VND";
        
        public static const AOA:String = "AOA";
        
        public static const KHR:String = "KHR";
        
        public static const MYR:String = "MYR";
        
        public static const KYD:String = "KYD";
        
        public static const LYD:String = "LYD";
        
        public static const UAH:String = "UAH";
        
        public static const JOD:String = "JOD";
        
        public static const AWG:String = "AWG";
        
        public static const SAR:String = "SAR";
        
        public static const EUR:String = "EUR";
        
        public static const HKD:String = "HKD";
        
        public static const CHF:String = "CHF";
        
        public static const GIP:String = "GIP";
        
        public static const BYR:String = "BYR";
        
        public static const ALL:String = "ALL";
        
        public static const MRO:String = "MRO";
        
        public static const HRK:String = "HRK";
        
        public static const DJF:String = "DJF";
        
        public static const SZL:String = "SZL";
        
        public static const THB:String = "THB";
        
        public static const XAF:String = "XAF";
        
        public static const BND:String = "BND";
        
        public static const ISK:String = "ISK";
        
        public static const UYU:String = "UYU";
        
        public static const NIO:String = "NIO";
        
        public static const LAK:String = "LAK";
        
        public static const SYP:String = "SYP";
        
        public static const MAD:String = "MAD";
        
        public static const MZN:String = "MZN";
        
        public static const PHP:String = "PHP";
        
        public static const ZAR:String = "ZAR";
        
        public static const NPR:String = "NPR";
        
        public static const ZWL:String = "ZWL";
        
        public static const NGN:String = "NGN";
        
        public static const CRC:String = "CRC";
        
        public static const AED:String = "AED";
        
        public static const EEK:String = "EEK";
        
        public static const MWK:String = "MWK";
        
        public static const LKR:String = "LKR";
        
        public static const PKR:String = "PKR";
        
        public static const HUF:String = "HUF";
        
        public static const BMD:String = "BMD";
        
        public static const LSL:String = "LSL";
        
        public static const MNT:String = "MNT";
        
        public static const AMD:String = "AMD";
        
        public static const UGX:String = "UGX";
        
        public static const QAR:String = "QAR";
        
        public static const XDR:String = "XDR";
        
        public static const JMD:String = "JMD";
        
        public static const GEL:String = "GEL";
        
        public static const SHP:String = "SHP";
        
        public static const AFN:String = "AFN";
        
        public static const SBD:String = "SBD";
        
        public static const KPW:String = "KPW";
        
        public static const TRY:String = "TRY";
        
        public static const BDT:String = "BDT";
        
        public static const YER:String = "YER";
        
        public static const HTG:String = "HTG";
        
        public static const XOF:String = "XOF";
        
        public static const MGA:String = "MGA";
        
        public static const ANG:String = "ANG";
        
        public static const LRD:String = "LRD";
        
        public static const RWF:String = "RWF";
        
        public static const NOK:String = "NOK";
        
        public static const MOP:String = "MOP";
        
        public static const INR:String = "INR";
        
        public static const MXN:String = "MXN";
        
        public static const CZK:String = "CZK";
        
        public static const TJS:String = "TJS";
        
        public static const BTC:String = "BTC";
        
        public static const BTN:String = "BTN";
        
        public static const COP:String = "COP";
        
        public static const TMT:String = "TMT";
        
        public static const MUR:String = "MUR";
        
        public static const IDR:String = "IDR";
        
        public static const HNL:String = "HNL";
        
        public static const XPF:String = "XPF";
        
        public static const FJD:String = "FJD";
        
        public static const ETB:String = "ETB";
        
        public static const PEN:String = "PEN";
        
        public static const BZD:String = "BZD";
        
        public static const ILS:String = "ILS";
        
        public static const DOP:String = "DOP";
        
        public static const TWD:String = "TWD";
        
        public static const MDL:String = "MDL";
        
        public static const BSD:String = "BSD";
        
        public static const SEK:String = "SEK";
        
        public static const ZMK:String = "ZMK";
        
        public static const JEP:String = "JEP";
        
        public static const AUD:String = "AUD";
        
        public static const SRD:String = "SRD";
        
        public static const CUP:String = "CUP";
        
        public static const CLF:String = "CLF";
        
        public static const BBD:String = "BBD";
        
        public static const KMF:String = "KMF";
        
        public static const KRW:String = "KRW";
        
        public static const GMD:String = "GMD";
        
        public static const VEF:String = "VEF";
        
        public static const GTQ:String = "GTQ";
        
        public static const CLP:String = "CLP";
        
        public static const ZMW:String = "ZMW";
        
        public static const LTL:String = "LTL";
        
        public static const CDF:String = "CDF";
        
        public static const XCD:String = "XCD";
        
        public static const KZT:String = "KZT";
        
        public static const RUB:String = "RUB";
        
        public static const XAG:String = "XAG";
        
        public static const TTD:String = "TTD";
        
        public static const OMR:String = "OMR";
        
        public static const BRL:String = "BRL";
        
        public static const MMK:String = "MMK";
        
        public static const PLN:String = "PLN";
        
        public static const PYG:String = "PYG";
        
        public static const KES:String = "KES";
        
        public static const SVC:String = "SVC";
        
        public static const MKD:String = "MKD";
        
        public static const GBP:String = "GBP";
        
        public static const AZN:String = "AZN";
        
        public static const TOP:String = "TOP";
        
        public static const MVR:String = "MVR";
        
        public static const VUV:String = "VUV";
        
        public static const GNF:String = "GNF";
        
        public static const WST:String = "WST";
        
        public static const IQD:String = "IQD";
        
        public static const BAM:String = "BAM";
        
        public static const SCR:String = "SCR";
        
        public static const CAD:String = "CAD";
        
        public static const CVE:String = "CVE";
        
        public static const KWD:String = "KWD";
        
        public static const BIF:String = "BIF";
        
        public static const PGK:String = "PGK";
        
        public static const SOS:String = "SOS";
        
        public static const SGD:String = "SGD";
        
        public static const UZS:String = "UZS";
        
        public static const STD:String = "STD";
        
        public static const IRR:String = "IRR";
        
        public static const CNY:String = "CNY";
        
        public static const SLL:String = "SLL";
        
        public static const TND:String = "TND";
        
        public static const GYD:String = "GYD";
        
        public static const MTL:String = "MTL";
        
        public static const NZD:String = "NZD";
        
        public static const FKP:String = "FKP";
        
        public static const LVL:String = "LVL";
        
        public static const USD:String = "USD";
        
        public static const KGS:String = "KGS";
        
        public static const ARS:String = "ARS";
        
        public static const RON:String = "RON";
        
        public static const RSD:String = "RSD";
        
        public static const BHD:String = "BHD";
        
        public static const JPY:String = "JPY";
        
        public static const SDG:String = "SDG";
        
        public static const XAU:String = "XAU";
        
        public function Currency(name:String)
        {
            if (Currency.currencies == null)
            {
                initCurrencies();
            }
            
            if (Currency.currencies[name] == null)
            {
                throw new UnknownCurrencyError(name);
            }
            this._name=name;
        }
        
        public function get name():String
        {
            return _name;
        }
        
        public function equals(currency:Currency):Boolean
        {
            return (this._name === currency.name);
        }
        
        private function initCurrencies():void
        {
            Currency.currencies=new Dictionary();
            Currency.currencies["DZD"]="Algerian Dinar";
            Currency.currencies["NAD"]="Namibian Dollar";
            Currency.currencies["GHS"]="Ghanaian Cedi";
            Currency.currencies["EGP"]="Egyptian Pound";
            Currency.currencies["BGN"]="Bulgarian Lev";
            Currency.currencies["PAB"]="Panamanian Balboa";
            Currency.currencies["BOB"]="Bolivian Boliviano";
            Currency.currencies["DKK"]="Danish Krone";
            Currency.currencies["BWP"]="Botswanan Pula";
            Currency.currencies["LBP"]="Lebanese Pound";
            Currency.currencies["TZS"]="Tanzanian Shilling";
            Currency.currencies["VND"]="Vietnamese Dong";
            Currency.currencies["AOA"]="Angolan Kwanza";
            Currency.currencies["KHR"]="Cambodian Riel";
            Currency.currencies["MYR"]="Malaysian Ringgit";
            Currency.currencies["KYD"]="Cayman Islands Dollar";
            Currency.currencies["LYD"]="Libyan Dinar";
            Currency.currencies["UAH"]="Ukrainian Hryvnia";
            Currency.currencies["JOD"]="Jordanian Dinar";
            Currency.currencies["AWG"]="Aruban Florin";
            Currency.currencies["SAR"]="Saudi Riyal";
            Currency.currencies["EUR"]="Euro";
            Currency.currencies["HKD"]="Hong Kong Dollar";
            Currency.currencies["CHF"]="Swiss Franc";
            Currency.currencies["GIP"]="Gibraltar Pound";
            Currency.currencies["BYR"]="Belarusian Ruble";
            Currency.currencies["ALL"]="Albanian Lek";
            Currency.currencies["MRO"]="Mauritanian Ouguiya";
            Currency.currencies["HRK"]="Croatian Kuna";
            Currency.currencies["DJF"]="Djiboutian Franc";
            Currency.currencies["SZL"]="Swazi Lilangeni";
            Currency.currencies["THB"]="Thai Baht";
            Currency.currencies["XAF"]="CFA Franc BEAC";
            Currency.currencies["BND"]="Brunei Dollar";
            Currency.currencies["ISK"]="Icelandic Króna";
            Currency.currencies["UYU"]="Uruguayan Peso";
            Currency.currencies["NIO"]="Nicaraguan Córdoba";
            Currency.currencies["LAK"]="Laotian Kip";
            Currency.currencies["SYP"]="Syrian Pound";
            Currency.currencies["MAD"]="Moroccan Dirham";
            Currency.currencies["MZN"]="Mozambican Metical";
            Currency.currencies["PHP"]="Philippine Peso";
            Currency.currencies["ZAR"]="South African Rand";
            Currency.currencies["NPR"]="Nepalese Rupee";
            Currency.currencies["ZWL"]="Zimbabwean Dollar";
            Currency.currencies["NGN"]="Nigerian Naira";
            Currency.currencies["CRC"]="Costa Rican Colón";
            Currency.currencies["AED"]="United Arab Emirates Dirham";
            Currency.currencies["EEK"]="Estonian Kroon";
            Currency.currencies["MWK"]="Malawian Kwacha";
            Currency.currencies["LKR"]="Sri Lankan Rupee";
            Currency.currencies["PKR"]="Pakistani Rupee";
            Currency.currencies["HUF"]="Hungarian Forint";
            Currency.currencies["BMD"]="Bermudan Dollar";
            Currency.currencies["LSL"]="Lesotho Loti";
            Currency.currencies["MNT"]="Mongolian Tugrik";
            Currency.currencies["AMD"]="Armenian Dram";
            Currency.currencies["UGX"]="Ugandan Shilling";
            Currency.currencies["QAR"]="Qatari Rial";
            Currency.currencies["XDR"]="Special Drawing Rights";
            Currency.currencies["JMD"]="Jamaican Dollar";
            Currency.currencies["GEL"]="Georgian Lari";
            Currency.currencies["SHP"]="Saint Helena Pound";
            Currency.currencies["AFN"]="Afghan Afghani";
            Currency.currencies["SBD"]="Solomon Islands Dollar";
            Currency.currencies["KPW"]="North Korean Won";
            Currency.currencies["TRY"]="Turkish Lira";
            Currency.currencies["BDT"]="Bangladeshi Taka";
            Currency.currencies["YER"]="Yemeni Rial";
            Currency.currencies["HTG"]="Haitian Gourde";
            Currency.currencies["XOF"]="CFA Franc BCEAO";
            Currency.currencies["MGA"]="Malagasy Ariary";
            Currency.currencies["ANG"]="Netherlands Antillean Guilder";
            Currency.currencies["LRD"]="Liberian Dollar";
            Currency.currencies["RWF"]="Rwandan Franc";
            Currency.currencies["NOK"]="Norwegian Krone";
            Currency.currencies["MOP"]="Macanese Pataca";
            Currency.currencies["INR"]="Indian Rupee";
            Currency.currencies["MXN"]="Mexican Peso";
            Currency.currencies["CZK"]="Czech Republic Koruna";
            Currency.currencies["TJS"]="Tajikistani Somoni";
            Currency.currencies["BTC"]="Bitcoin";
            Currency.currencies["BTN"]="Bhutanese Ngultrum";
            Currency.currencies["COP"]="Colombian Peso";
            Currency.currencies["TMT"]="Turkmenistani Manat";
            Currency.currencies["MUR"]="Mauritian Rupee";
            Currency.currencies["IDR"]="Indonesian Rupiah";
            Currency.currencies["HNL"]="Honduran Lempira";
            Currency.currencies["XPF"]="CFP Franc";
            Currency.currencies["FJD"]="Fijian Dollar";
            Currency.currencies["ETB"]="Ethiopian Birr";
            Currency.currencies["PEN"]="Peruvian Nuevo Sol";
            Currency.currencies["BZD"]="Belize Dollar";
            Currency.currencies["ILS"]="Israeli New Sheqel";
            Currency.currencies["DOP"]="Dominican Peso";
            Currency.currencies["TWD"]="New Taiwan Dollar";
            Currency.currencies["MDL"]="Moldovan Leu";
            Currency.currencies["BSD"]="Bahamian Dollar";
            Currency.currencies["SEK"]="Swedish Krona";
            Currency.currencies["ZMK"]="Zambian Kwacha (pre-2013)";
            Currency.currencies["JEP"]="Jersey Pound";
            Currency.currencies["AUD"]="Australian Dollar";
            Currency.currencies["SRD"]="Surinamese Dollar";
            Currency.currencies["CUP"]="Cuban Peso";
            Currency.currencies["CLF"]="Chilean Unit of Account (UF)";
            Currency.currencies["BBD"]="Barbadian Dollar";
            Currency.currencies["KMF"]="Comorian Franc";
            Currency.currencies["KRW"]="South Korean Won";
            Currency.currencies["GMD"]="Gambian Dalasi";
            Currency.currencies["VEF"]="Venezuelan Bolívar Fuerte";
            Currency.currencies["GTQ"]="Guatemalan Quetzal";
            Currency.currencies["CLP"]="Chilean Peso";
            Currency.currencies["ZMW"]="Zambian Kwacha";
            Currency.currencies["LTL"]="Lithuanian Litas";
            Currency.currencies["CDF"]="Congolese Franc";
            Currency.currencies["XCD"]="East Caribbean Dollar";
            Currency.currencies["KZT"]="Kazakhstani Tenge";
            Currency.currencies["RUB"]="Russian Ruble";
            Currency.currencies["XAG"]="Silver (troy ounce)";
            Currency.currencies["TTD"]="Trinidad and Tobago Dollar";
            Currency.currencies["OMR"]="Omani Rial";
            Currency.currencies["BRL"]="Brazilian Real";
            Currency.currencies["MMK"]="Myanma Kyat";
            Currency.currencies["PLN"]="Polish Zloty";
            Currency.currencies["PYG"]="Paraguayan Guarani";
            Currency.currencies["KES"]="Kenyan Shilling";
            Currency.currencies["SVC"]="Salvadoran Colón";
            Currency.currencies["MKD"]="Macedonian Denar";
            Currency.currencies["GBP"]="British Pound Sterling";
            Currency.currencies["AZN"]="Azerbaijani Manat";
            Currency.currencies["TOP"]="Tongan Paʻanga";
            Currency.currencies["MVR"]="Maldivian Rufiyaa";
            Currency.currencies["VUV"]="Vanuatu Vatu";
            Currency.currencies["GNF"]="Guinean Franc";
            Currency.currencies["WST"]="Samoan Tala";
            Currency.currencies["IQD"]="Iraqi Dinar";
            Currency.currencies["BAM"]="Bosnia-Herzegovina Convertible Mark";
            Currency.currencies["SCR"]="Seychellois Rupee";
            Currency.currencies["CAD"]="Canadian Dollar";
            Currency.currencies["CVE"]="Cape Verdean Escudo";
            Currency.currencies["KWD"]="Kuwaiti Dinar";
            Currency.currencies["BIF"]="Burundian Franc";
            Currency.currencies["PGK"]="Papua New Guinean Kina";
            Currency.currencies["SOS"]="Somali Shilling";
            Currency.currencies["SGD"]="Singapore Dollar";
            Currency.currencies["UZS"]="Uzbekistan Som";
            Currency.currencies["STD"]="São Tomé and Príncipe Dobra";
            Currency.currencies["IRR"]="Iranian Rial";
            Currency.currencies["CNY"]="Chinese Yuan";
            Currency.currencies["SLL"]="Sierra Leonean Leone";
            Currency.currencies["TND"]="Tunisian Dinar";
            Currency.currencies["GYD"]="Guyanaese Dollar";
            Currency.currencies["MTL"]="Maltese Lira";
            Currency.currencies["NZD"]="New Zealand Dollar";
            Currency.currencies["FKP"]="Falkland Islands Pound";
            Currency.currencies["LVL"]="Latvian Lats";
            Currency.currencies["USD"]="United States Dollar";
            Currency.currencies["KGS"]="Kyrgystani Som";
            Currency.currencies["ARS"]="Argentine Peso";
            Currency.currencies["RON"]="Romanian Leu";
            Currency.currencies["RSD"]="Serbian Dinar";
            Currency.currencies["BHD"]="Bahraini Dinar";
            Currency.currencies["JPY"]="Japanese Yen";
            Currency.currencies["SDG"]="Sudanese Pound";
            Currency.currencies["XAU"]="Gold (troy ounce)";
        }
    }
}