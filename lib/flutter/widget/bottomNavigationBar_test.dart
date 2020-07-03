import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/pages/tabs/Tabs.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
    );
  }
}

/*
*
* flutter 中路由通俗讲就是页面跳转
*
*
* */