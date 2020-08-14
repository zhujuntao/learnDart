import 'package:flutter/material.dart';
//ChangeNotifier 意思是可以不用管理听众
class MyName with ChangeNotifier {
  String name = '张三';

  setName() {
    name = '李四';
    notifyListeners();
  }
}
