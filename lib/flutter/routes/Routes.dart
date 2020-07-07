import 'package:flutterapp/flutter/pages/FormPage.dart';
import 'package:flutterapp/flutter/pages/ProductInfoPage.dart';
import 'package:flutterapp/flutter/pages/ProductPage.dart';
import 'package:flutterapp/flutter/pages/SearchPage.dart';
import 'package:flutterapp/flutter/pages/UserInfoPage.dart';
import 'package:flutterapp/flutter/pages/appbar/AppBarDemo.dart';
import 'package:flutterapp/flutter/pages/appbar/TabBarControllerPage.dart';
import 'package:flutterapp/flutter/pages/tabs/Tabs.dart';
import 'package:flutterapp/flutter/user/LoginToUser.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/user/RegisterFirst.dart';
import 'package:flutterapp/flutter/user/RegisterSecond.dart';
import 'package:flutterapp/flutter/user/RegisterThird.dart';
import 'package:flutterapp/flutter/widget/button/RaiseButtonUse.dart';

//配置路由
final routes = {
  '/': (context) => Tabs(),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/product': (context, {arguments}) => ProductPage(/*arguments: arguments*/),
  '/productinfo': (context, {arguments}) =>
      ProductInfoPage(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirst(),
  '/registerSecond': (context) => RegisterSecond(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appbarDemoPage': (context) => AppBarDemoPage(),
  '/tabbarControllerPage': (context) => TabBarControllerPage(),
  '/userInfoPage': (context) => UserInfoPage(),
  '/raiseButtonDemoPage': (context) => RaiseButtonDemoPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
};

//固定写法
// ignore: top_level_function_literal_block, missing_return
var onMyGenerateRoute = (RouteSettings settings) {
  //统一处理
  //获取跳转时传入的路由名称
  final String name = settings.name;
  print('======:' + name);
  //获取配置路由中的值，（定义的组件eg：FormPage(arguments: arguments)    ）
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              // 通过pageContentBuilder 调用 （定义的组件eg：FormPage(arguments: arguments)
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
