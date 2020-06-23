/*
* Dart 中接口：
* 1、dart的接口没有interface 关键字定义接口，而是普通类和抽象类都可以作为接口实现。
* 同样使用implement关键字进行实现
* 2、dart的接口如果实现的类是普通类，会将普通类和抽象中的属性的方法全部需要复写一遍。
* 而因为抽象类可以定义抽象方法，普通类不可以，所以一般要实现像java那样的方式，会使用抽象类。
* 建议使用抽象类定义接口
*
*
* */

//案例：定义一个DB库 支持MySQL，mssql mongodb
//MySQL，mssql mongodb 三个类中都有同样的方法

import 'package:flutterapp/data/Mongodb.dart';
import 'package:flutterapp/data/Mysql.dart';
import 'package:flutterapp/data/Mssql.dart';

void main() {
//  Mysql mysql = new Mysql('xxxx');
//  mysql.add("123333");
   Mssql mssql=new Mssql();
   mssql.uri='127.0.0.1';
   mssql.add('增加的数据');
}
