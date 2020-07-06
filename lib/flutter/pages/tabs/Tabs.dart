import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/pages/tabs/CatagoryPage.dart';
import 'package:flutterapp/flutter/pages/tabs/HomePage.dart';
import 'package:flutterapp/flutter/pages/tabs/SettingPage.dart';

class Tabs extends StatefulWidget {
  final index;

  Tabs({this.index = 0});

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  _TabsState(int index) {
    this._currentIndex = index;
  }

  List _pageList = [HomePage(), CategoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is a demo'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //配置对应的索引值选中
        currentIndex: this._currentIndex,
        onTap: (int index) {
          print(index);
          setState(() {
            this._currentIndex = index;
          });
        },
        //图标大小
        iconSize: 36.0,
        //选中颜色
        fixedColor: Colors.redAccent,
        //设置底部导航可以有多个按钮
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('设置')),
        ],
      ),
    );
  }
}
