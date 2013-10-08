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
* comporation
* allocation in percent like allocate(array(70, 30)
* two way currency convertions





