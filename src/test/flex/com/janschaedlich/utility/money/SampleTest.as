package com.janschaedlich.utility.money
{
	import org.flexunit.asserts.assertTrue;
	import com.janschaedlich.utility.money.Sample;

	public class SampleTest
	{
		private var _instance:Sample;
		
		public function SampleTest() 
		{
			
		}
		
		[Before]
		public function init():void
		{
			_instance = new Sample();
		}
		
		[Test]
		public function returnNumber():void
		{
			assertTrue( _instance.returnTrue() );
		}
	}
}