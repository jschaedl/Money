Money
=====

[![Build Status](https://travis-ci.org/jschaedl/Money.png?branch=master)](https://travis-ci.org/jschaedl/Money) 

This is an Actionscript port of the PHP Money Library by [mathiasverraes](https://github.com/mathiasverraes) an implementation of Martin Fowlers Quantity Pattern espacially for Money. See: [https://github.com/mathiasverraes/money](https://github.com/mathiasverraes/money)

Find more information on Fowlers Money Pattern here: [Martin Fowlers Quantity Pattern](http://martinfowler.com/eaaDev/quantity.html)

This Actionscript port is build on Flex 4.6.0 sdk, uses FlexUnit 4.1 for UnitTests and is mavenized with the help of the flexmojos plugin.


## Testing and Building

To run the unit tests go to project folder and type: 

```
mvn clean test -Dflex.flashPlayer.command='/path/to/flashplayer'
```

To build and install the library go to project folder and type: 

```
mvn clean install -Dflex.flashPlayer.command="/path/to/flashplayer"
```

The should find the compiled swc ```money-1.0.0-alpha.swc``` unter ```/target``` directory.


## Troubleshooting

If flexmojos don't find flashplayer executables see: [https://docs.sonatype.org/display/FLEXMOJOS/Running+unit+tests](https://docs.sonatype.org/display/FLEXMOJOS/Running+unit+tests) for more information and some help. You can also have a look at the ```.travis.yml``` configuration file for help.  

## Implemented Features
* addition
* substraction
* multiplication
* division
* comparison
* comporators
* allocation in percent like allocate(array(70, 30)
* two way currency convertions

## Example usage

```
// building a money object
var amount:int = 1000;
var currency:Currency = new Currency(Currency.EUR);
var money:Money = new Money(amount, currency);

// using the money builder
var euro:Money = MoneyBuilder.EUR(100);
var dollar:Money = MoneyBuilder.USD(100);
var yuan:Money = MoneyBuilder.CNY(100);

// --
var money_1:Money = MoneyBuilder.EUR(100);
var money_2:Money = MoneyBuilder.EUR(50);

// addition
var sum:Money = money_1.add(money_2);

// substraction
var diff:Money = money_1.substract(money_2);

// multiplication
var prod:Money = money_1.multiply(2.5);

// division
var quot:ArrayCollection = money_1.divide(3);

```
















[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/jschaedl/money/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

