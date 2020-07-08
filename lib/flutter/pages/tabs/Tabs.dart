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
      floatingActionButton: Container(
        width: 80,
        height: 80,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('FloatingActionButton ');
            setState(() {
              //改变状态
              this._currentIndex = 1;
            });
          },
          backgroundColor:
              this._currentIndex == 1 ? Colors.redAccent : Colors.amber,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
      //侧边栏
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            //头部布局
            Row(
              children: <Widget>[
                Expanded(
                    child: DrawerHeader(
                  child: Text('你好flutter'),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.itying.com/images/flutter/2.png'),
                          fit: BoxFit.cover)
//                    color: Colors.yellow,

                      ),
                )),
              ],
            ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('用户中心'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/userInfoPage');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: UserAccountsDrawerHeader(
                  accountName: Text('张三'),
                  accountEmail: Text('xxxx@qq.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/3.png'),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                        'https://www.itying.com/images/flutter/2.png'),
                    fit: BoxFit.cover,
                  )),
                  otherAccountsPictures: <Widget>[
                    Image.network(
                        'https://www.itying.com/images/flutter/3.png'),
                    Image.network(
                        'https://www.itying.com/images/flutter/4.png'),
                  ],
                ))
              ],
            ),
            Text('右边侧边栏'),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            ),
          ],
        ),
      ),
    );
  }
}
