/*
*
* https://www.itying.com/category-79-b0.html
*
* pub 包管理系统的使用
*
* 1、从下面网址中找到要用的库
*   https://pub.dev/packages
*   https://pub.flutter-io.cn/packages
*   https://pub.dartlang.org/flutter/
*
* 2、需要在自己的项跟目录新建一个pubspec.yaml  内容如下
*
*   name:xxx
*
*   description: A new module application.
*
*   dependencies:
*             http:^0.12.0+2
*             date_format:^1.0.6
*
* 3、配置dependencies
*
* 4、运行 pub get 获取远程库
*
* 5、看文档引入库使用
*
*
*注：
* 1、冲突解决
* 当引入两个库中有相同名称标识符的时候，如果是java通常我们通过写上完整的包名路径来指定使用。
*
* import 'package:lib1/lib1.dart' ;
* import 'package:lib2/lib2.dart' as lib2;
*
* Element element=new Element();//form lib1
*
* lib2.Element element2=new lib2.Element();//form lib2
*
* 2、部分导入
* 如果只需要导入库的一部分，有两种模式：
*
* 模式一：只导入需要的部分，使用show 关键字，如下
*
* import 'package:lib1/lib1.dart' show foo ;
*
* 模式二：隐藏不需要的部门，使用hide关键字 如下
*
* import 'package:lib2/lib2.dart' hide foo ;
*
* */
/*
* 延迟加载：
*
* 也称为懒加载，可以再需要的时候再进行加载。可以减少APP的启动时间
*
* 懒加载使用deferred as 关键字来指定 如下例子
*
* import 'package:deferred/hello.dart' deferred as hello ;
*
*当需要使用时，需要使用loadLibrary()方法来加载
*
* greet() async{
*   await hello.loadLibrary();
*   hello.printGreeting();
* }
* */

import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import 'package:date_format/date_format.dart';

import 'Person.dart';
import 'Person2.dart' as P2;

//import 'package:flutterapp/data/myMath.dart';
//import 'package:flutterapp/data/myMath.dart' show getName;
import 'package:flutterapp/data/myMath.dart' hide getName;

void main(List<String> args) async {
  /*Person p = new Person('张三', 20);
  p.printInfo();
  P2.Person p2 = new P2.Person('历史', 20);
  p2.printInfo();*/

//  getName();
  getAge();

//  var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';
/*  var url = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }*/

//打印日期

/*  print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
  print(formatDate(DateTime(1989, 2, 21), [yy, '-', m, '-', dd]));
  print(formatDate(DateTime(1989, 2, 1), [yy, '-', m, '-', d]));

  print(formatDate(DateTime(1989, 2, 1), [yy, '-', MM, '-', d]));
  print(formatDate(DateTime(1989, 2, 21), [yy, '-', M, '-', d]));

  print(formatDate(DateTime(1989, 2, 1), [yy, '-', M, '-', d]));

  print(formatDate(DateTime(2018, 1, 14), [yy, '-', M, '-', DD]));
  print(formatDate(DateTime(2018, 1, 14), [yy, '-', M, '-', D]));

  print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss]));

  print(formatDate(
      DateTime(1989, 02, 1, 15, 40, 10), [hh, ':', nn, ':', ss, ' ', am]));

  print(formatDate(
      DateTime(1989, 02, 1, 15, 40, 10), [hh, ':', nn, ':', ss, ' ', am]));

  print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [hh]));
  print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [h]));

  print(formatDate(DateTime(1989, 02, 1, 5), [am]));
  print(formatDate(DateTime(1989, 02, 1, 15), [am]));

  print(
      formatDate(DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, z]));

  print(formatDate(
      DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, ' ', Z]));

  print(formatDate(DateTime(1989, 02, 21), [yy, ' ', w]));
  print(formatDate(DateTime(1989, 02, 21), [yy, ' ', W]));

  print(formatDate(DateTime(1989, 12, 31), [yy, '-W', W]));
  print(formatDate(DateTime(1989, 1, 1), [yy, '-', mm, '-w', W]));

  print(formatDate(
      DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, ' ', Z]));*/
}
