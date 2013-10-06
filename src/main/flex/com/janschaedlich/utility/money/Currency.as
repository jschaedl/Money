package com.janschaedlich.utility.money
{
	import com.janschaedlich.utility.money.exception.UnknownCurrencyError;
	
	import flash.utils.Dictionary;

	public class Currency
	{
		private var _name:String;
		private static var currencies:Dictionary;
		
		public function Currency(name:String) {
			if (Currency.currencies == null) {
				initCurrencies();
			}
			
			if (Currency.currencies[name] == null) {
				throw new UnknownCurrencyError(name);
			}
			
			this._name = name;
		}
		
		public function get name():String
		{
			return _name;
		}
		
		public function equals(currency:Currency):Boolean
		{
			return (this._name === currency.name); 
		}
		
		private function initCurrencies():void {
			Currency.currencies = new Dictionary();
			Currency.currencies["AED"] = "United Arab Emirates Dirham";
			Currency.currencies["AFN"] = "Afghan Afghani";
			Currency.currencies["ALL"] = "Albanian Lek";
			Currency.currencies["AMD"] = "Armenian Dram";
			Currency.currencies["ANG"] = "Netherlands Antillean Guilder";
			Currency.currencies["AOA"] = "Angolan Kwanza";
			Currency.currencies["ARS"] = "Argentine Peso";
			Currency.currencies["AUD"] = "Australian Dollar";
			Currency.currencies["AWG"] = "Aruban Florin"; 
			Currency.currencies["AZN"] = "Azerbaijani Manat";
			Currency.currencies["BAM"] = "Bosnia-Herzegovina Convertible Mark";
			Currency.currencies["BBD"] = "Barbadian Dollar";
			Currency.currencies["BDT"] = "Bangladeshi Taka";
			Currency.currencies["BGN"] = "Bulgarian Lev";
			Currency.currencies["BHD"] = "Bahraini Dinar";
			Currency.currencies["BIF"] = "Burundian Franc";
			Currency.currencies["BMD"] = "Bermudan Dollar";
			Currency.currencies["BND"] = "Brunei Dollar";
			Currency.currencies["BOB"] = "Bolivian Boliviano";
			Currency.currencies["BRL"] = "Brazilian Real";
			Currency.currencies["BSD"] = "Bahamian Dollar";
			Currency.currencies["BTN"] = "Bhutanese Ngultrum";
			Currency.currencies["BWP"] = "Botswanan Pula";
			Currency.currencies["BYR"] = "Belarusian Ruble";
			Currency.currencies["BZD"] = "Belize Dollar";
			Currency.currencies["CAD"] = "Canadian Dollar";
			Currency.currencies["CDF"] = "Congolese Franc";
			Currency.currencies["CHF"] = "Swiss Franc";
			Currency.currencies["CLF"] = "Chilean Unit of Account (UF)";
			Currency.currencies["CLP"] = "Chilean Peso";
			Currency.currencies["CNY"] = "Chinese Yuan";
			Currency.currencies["COP"] = "Colombian Peso";
			Currency.currencies["CRC"] = "Costa Rican Colón";
			Currency.currencies["CUP"] = "Cuban Peso";
			Currency.currencies["CVE"] = "Cape Verdean Escudo";
			Currency.currencies["CZK"] = "Czech Republic Koruna";
			Currency.currencies["DJF"] = "Djiboutian Franc";
			Currency.currencies["DKK"] = "Danish Krone";
			Currency.currencies["DOP"] = "Dominican Peso";
			Currency.currencies["DZD"] = "Algerian Dinar";
			Currency.currencies["EEK"] = "Estonian Kroon";
			Currency.currencies["EGP"] = "Egyptian Pound";
			Currency.currencies["ETB"] = "Ethiopian Birr";
			Currency.currencies["EUR"] = "Euro";
			Currency.currencies["FJD"] = "Fijian Dollar";
			Currency.currencies["FKP"] = "Falkland Islands Pound";
			Currency.currencies["GBP"] = "British Pound Sterling";
			Currency.currencies["GEL"] = "Georgian Lari";
			Currency.currencies["GHS"] = "Ghanaian Cedi";
			Currency.currencies["GIP"] = "Gibraltar Pound";
			Currency.currencies["GMD"] = "Gambian Dalasi";
			Currency.currencies["GNF"] = "Guinean Franc";
			Currency.currencies["GTQ"] = "Guatemalan Quetzal";
			Currency.currencies["GYD"] = "Guyanaese Dollar";
			Currency.currencies["HKD"] = "Hong Kong Dollar";
			Currency.currencies["HNL"] = "Honduran Lempira";
			Currency.currencies["HRK"] = "Croatian Kuna";
			Currency.currencies["HTG"] = "Haitian Gourde";
			Currency.currencies["HUF"] = "Hungarian Forint";
			Currency.currencies["IDR"] = "Indonesian Rupiah";
			Currency.currencies["ILS"] = "Israeli New Sheqel";
			Currency.currencies["INR"] = "Indian Rupee";
			Currency.currencies["IQD"] = "Iraqi Dinar";
			Currency.currencies["IRR"] = "Iranian Rial";
			Currency.currencies["ISK"] = "Icelandic Króna";
			Currency.currencies["JEP"] = "Jersey Pound";
			Currency.currencies["JMD"] = "Jamaican Dollar";
			Currency.currencies["JOD"] = "Jordanian Dinar";
			Currency.currencies["JPY"] = "Japanese Yen";
			Currency.currencies["KES"] = "Kenyan Shilling";
			Currency.currencies["KGS"] = "Kyrgystani Som";
			Currency.currencies["KHR"] = "Cambodian Riel";
			Currency.currencies["KMF"] = "Comorian Franc";
			Currency.currencies["KPW"] = "North Korean Won";
			Currency.currencies["KRW"] = "South Korean Won";
			Currency.currencies["KWD"] = "Kuwaiti Dinar";
			Currency.currencies["KYD"] = "Cayman Islands Dollar";
			Currency.currencies["KZT"] = "Kazakhstani Tenge";
			Currency.currencies["LAK"] = "Laotian Kip";
			Currency.currencies["LBP"] = "Lebanese Pound";
			Currency.currencies["LKR"] = "Sri Lankan Rupee";
			Currency.currencies["LRD"] = "Liberian Dollar";
			Currency.currencies["LSL"] = "Lesotho Loti";
			Currency.currencies["LTL"] = "Lithuanian Litas";
			Currency.currencies["LVL"] = "Latvian Lats";
			Currency.currencies["LYD"] = "Libyan Dinar";
			Currency.currencies["MAD"] = "Moroccan Dirham";
			Currency.currencies["MDL"] = "Moldovan Leu";
			Currency.currencies["MGA"] = "Malagasy Ariary";
			Currency.currencies["MKD"] = "Macedonian Denar";
			Currency.currencies["MMK"] = "Myanma Kyat";
			Currency.currencies["MNT"] = "Mongolian Tugrik";
			Currency.currencies["MOP"] = "Macanese Pataca";
			Currency.currencies["MRO"] = "Mauritanian Ouguiya";
			Currency.currencies["MUR"] = "Mauritian Rupee";
			Currency.currencies["MVR"] = "Maldivian Rufiyaa";
			Currency.currencies["MWK"] = "Malawian Kwacha";
			Currency.currencies["MXN"] = "Mexican Peso";
			Currency.currencies["MYR"] = "Malaysian Ringgit";
			Currency.currencies["MZN"] = "Mozambican Metical";
			Currency.currencies["NAD"] = "Namibian Dollar";
			Currency.currencies["NGN"] = "Nigerian Naira";
			Currency.currencies["NIO"] = "Nicaraguan Córdoba";
			Currency.currencies["NOK"] = "Norwegian Krone";
			Currency.currencies["NPR"] = "Nepalese Rupee";
			Currency.currencies["NZD"] = "New Zealand Dollar";
			Currency.currencies["OMR"] = "Omani Rial";
			Currency.currencies["PAB"] = "Panamanian Balboa";
			Currency.currencies["PEN"] = "Peruvian Nuevo Sol";
			Currency.currencies["PGK"] = "Papua New Guinean Kina";
			Currency.currencies["PHP"] = "Philippine Peso";
			Currency.currencies["PKR"] = "Pakistani Rupee";
			Currency.currencies["PLN"] = "Polish Zloty";
			Currency.currencies["PYG"] = "Paraguayan Guarani";
			Currency.currencies["QAR"] = "Qatari Rial";
			Currency.currencies["RON"] = "Romanian Leu";
			Currency.currencies["RSD"] = "Serbian Dinar";
			Currency.currencies["RUB"] = "Russian Ruble";
			Currency.currencies["RWF"] = "Rwandan Franc";
			Currency.currencies["SAR"] = "Saudi Riyal";
			Currency.currencies["SBD"] = "Solomon Islands Dollar";
			Currency.currencies["SCR"] = "Seychellois Rupee";
			Currency.currencies["SDG"] = "Sudanese Pound";
			Currency.currencies["SEK"] = "Swedish Krona";
			Currency.currencies["SGD"] = "Singapore Dollar";
			Currency.currencies["SHP"] = "Saint Helena Pound";
			Currency.currencies["SLL"] = "Sierra Leonean Leone";
			Currency.currencies["SOS"] = "Somali Shilling";
			Currency.currencies["SRD"] = "Surinamese Dollar";
			Currency.currencies["STD"] = "São Tomé and Príncipe Dobra";
			Currency.currencies["SVC"] = "Salvadoran Colón";
			Currency.currencies["SYP"] = "Syrian Pound";
			Currency.currencies["SZL"] = "Swazi Lilangeni";
			Currency.currencies["THB"] = "Thai Baht";
			Currency.currencies["TJS"] = "Tajikistani Somoni";
			Currency.currencies["TMT"] = "Turkmenistani Manat";
			Currency.currencies["TND"] = "Tunisian Dinar";
			Currency.currencies["TOP"] = "Tongan Paʻanga";
			Currency.currencies["TRY"] = "Turkish Lira";
			Currency.currencies["TTD"] = "Trinidad and Tobago Dollar";
			Currency.currencies["TWD"] = "New Taiwan Dollar";
			Currency.currencies["TZS"] = "Tanzanian Shilling";
			Currency.currencies["UAH"] = "Ukrainian Hryvnia";
			Currency.currencies["UGX"] = "Ugandan Shilling";
			Currency.currencies["USD"] = "United States Dollar";
			Currency.currencies["UYU"] = "Uruguayan Peso";
			Currency.currencies["UZS"] = "Uzbekistan Som";
			Currency.currencies["VEF"] = "Venezuelan Bolívar";
			Currency.currencies["VND"] = "Vietnamese Dong";
			Currency.currencies["VUV"] = "Vanuatu Vatu";
			Currency.currencies["WST"] = "Samoan Tala";
			Currency.currencies["XAF"] = "CFA Franc BEAC";
			Currency.currencies["XCD"] = "East Caribbean Dollar";
			Currency.currencies["XDR"] = "Special Drawing Rights";
			Currency.currencies["XOF"] = "CFA Franc BCEAO";
			Currency.currencies["XPF"] = "CFP Franc";
			Currency.currencies["YER"] = "Yemeni Rial";
			Currency.currencies["ZAR"] = "South African Rand";
			Currency.currencies["ZMK"] = "Zambian Kwacha";
			Currency.currencies["ZWL"] = "Zimbabwean Dollar";
		}
	}
}