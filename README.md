# [super_pager](https://pub.dev/packages/super_pager/install)


Amazing animated pager widget , you can use it for paging your widgets and give your UI new high level

Add Super Pager => Better UI/UX => more clients


[![Pub](https://img.shields.io/pub/v/super_pager?color=blue&label=Pub&logo=flutter&style=flat-square)](https://pub.dev/packages/super_pager/install)
[![GitHub](https://img.shields.io/github/checks-status/ABDULKARIMALBAIK/super_pager/main?color=green&label=Github&logo=github&style=flat-square)](https://github.com/ABDULKARIMALBAIK/super_pager)
![Size](https://img.shields.io/github/languages/code-size/ABDULKARIMALBAIK/super_pager?color=red&label=Size&logo=github&style=flat-square)
![License](https://img.shields.io/github/license/ABDULKARIMALBAIK/super_pager?color=yellow&label=License&logo=github&style=flat-square)
![Twitter Follow](https://img.shields.io/twitter/follow/abdalka10233202?label=Twitter%20followers&style=social)











# Features

**Animation**

This widget animate any widget with pro UI,  you can use it to add new animated pager to your ui and improve ux

**Configurable Widget**

You can control any part of this widget speed , width , height and widgets



# Installing

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  super_pager: latest_version
```


Then import the package in dart code:

```dart
import 'package:super_pager/super_pager.dart';
```


More details see [pub.dev](https://pub.dev/packages/super_pager/install).



# Usage

The `super_pager` package it is so easy to use:


> :warning:: The `widgets` length must be isn't empty .


**Without any child widget**

```
      SuperPager(
duration: Duration(milliseconds: 300),
width: 400,
height: 300,
currentIndex: 0,
widgets [
  Container(color: Colors.black,)
   ],
)
```



# Widget Properties

**currentIndex**

*int*

current index of The pager.


**width**

*double*

width of The pager.


**height**

*double*

height of The pager.


**duration**

*Duration*

speed of paging of The pager.


**widgets**

*List<Widget>*

widgets of The pager.