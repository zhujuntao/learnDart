/*
*Dart 中，库的使用时通过import 关键字引入
* 
* library 指令可以创建一个库，每个Dart文件都是一个库，即使没有使用library指令来指定
* 
* Dart中的库主要有三种：
* 
* 1、我们自定义的库
*    import 'lib/xxx.dart'；
* 2、系统内置库
*    import 'dart：math'；
*    import 'dart：'；
*    import 'dart：convert'；
* 
* 3、Pub包管理系统中的库
*
*   https://pub.dev/packages
*   https://pub.flutter-io.cn/packages
*   https://pub.dartlang.org/flitter
*
* 1、需要在自己的项跟目录新建一个pubspec.yaml
* 2、在pubspec.yaml文件 然后配置名称、描述、依赖等信息
* 3、然后运行pub get 获取包下载到本地
* 4、项目中引入库import 'package：http/http.dart' as http ; 看文档使用
*
*
* */

import 'package:flutterapp/data/Animal.dart';
import 'dart:io';
import 'dart:math';
import 'dart:convert';

void main() async {
  /* var a = new Animal("小黑狗", 1);
  a.printInfo();*/

  /* print(min(12, 23));
  print(max(12, 23));*/

  var result =await _getDataZhihuApi();

  print(result);
}

//api 接口： http://news-at.zhihu.com/api/3/stories/latest
_getDataZhihuApi() async {
  //1.创建httpclient对象
  var httpClient = new HttpClient();

  //2.创建Uri对象/api/3/stories/latest
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');

  //3.发起请求等待请求
  var request = await httpClient.getUrl(uri);

  //4.关闭请求等待响应
  var response = await request.close();

  //5.解密响应的内容

  return await response.transform(utf8.decoder).join();
}
