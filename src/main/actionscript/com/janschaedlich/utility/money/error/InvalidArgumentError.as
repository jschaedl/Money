package com.janschaedlich.utility.money.error
{
    public class InvalidArgumentError extends Error
    {
        public function InvalidArgumentError(message:* = "", id:* = 0)
        {
            super(message, id);
        }
    }
}
