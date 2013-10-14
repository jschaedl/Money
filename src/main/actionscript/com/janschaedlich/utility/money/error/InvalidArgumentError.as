package com.janschaedlich.utility.money.error
{
    public class InvalidArgumentError extends Error
    {
        public function InvalidArgumentError(message:String = "", id:int = 0)
        {
            super(message, id);
        }
    }
}
