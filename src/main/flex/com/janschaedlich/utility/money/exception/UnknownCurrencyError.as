package com.janschaedlich.utility.money.exception
{
	public class UnknownCurrencyError extends Error
	{
		public function UnknownCurrencyError(message:*="", id:*=0)
		{
			super(message, id);
		}
	}
}