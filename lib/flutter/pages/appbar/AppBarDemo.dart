import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //配置切换的个数
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('自定义APPbar'),
          centerTitle: true,
          backgroundColor: Colors.pink,
          /*leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print("Icons.menu");
              }),*/
          //右侧图标  可以设置多个
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print("Icons.search");
                }),
            IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  print("Icons.settings");
                }),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '热门',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('这是第一个tab页'),
                ),
                ListTile(
                  title: Text('这是第一个tab页'),
                ),
                ListTile(
                  title: Text('这是第一个tab页'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('这是第二个tab页'),
                ),
                ListTile(
                  title: Text('这是第二个tab页'),
                ),
                ListTile(
                  title: Text('这是第二个tab页'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
