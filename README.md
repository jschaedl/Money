Money
=====

[![Build Status](https://travis-ci.org/jschaedl/Money.png?branch=master)](https://travis-ci.org/jschaedl/Money) 

**Todo: configure travis-ci for gradlefx build**

---

This is an Actionscript port of the PHP Money Library by [mathiasverraes](https://github.com/mathiasverraes) an implementation of Martin Fowlers Quantity Pattern espacially for Money. See: [https://github.com/mathiasverraes/money](https://github.com/mathiasverraes/money)

Find more information on Fowlers Money Pattern here: [Martin Fowlers Quantity Pattern](http://martinfowler.com/eaaDev/quantity.html)

This Actionscript port is build on Flex 4.9.1 SDK, uses FlexUnit 4.1 for UnitTests and gradlefx for build automation.

To run the unit tests go to project folder and type: 

```
gradle test -PflexUnitCommand='path/to/Flash Player Debugger'
```

Make sure to set a correct ```flexUnit.command``` in the ```build.gradle```. You can have a look at the ```.travis.yml``` for an example.

## Implemented Features
* addition
* substraction
* multiplication
* division
* comparison
* comporation
* TODO: allocation like allocate(array(7, 3)
* TODO: convertions






