package com.janschaedlich.utility.money.exception
{
	public class SubstractingDifferentCurrenciesNotAllowedError extends Error
	{
		public function SubstractingDifferentCurrenciesNotAllowedError(message:*="", id:*=0)
		{
			super(message, id);
		}
	}
}