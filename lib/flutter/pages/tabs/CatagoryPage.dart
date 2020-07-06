import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/pages/FormPage.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    /* return Container(
      color: Colors.amber,
      child: Text('我是分类组件'),
    );*/
    /*return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到表单页面并传值'),
          onPressed: () {
//            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormPage()));
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return FormPage(title: '我是分类跳转传值');
            }));
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );*/

    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    /*
                    * tabs 显示的标签内容
                    *
                    * controller:  TabController对象,
                    * isScrollable: 是否可以滚动,
                    * indicatorColor: 指示器颜色,
                    * indicator: 指示器decoration 例如边框等,
                    * indicatorSize: TabBarIndicatorSize.tab 给每个tab等宽 label 跟文字等宽,
                    * labelColor: 选中颜色,
                    *
                    *
                    * */
                    indicatorColor: Colors.pink,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      Tab(
                        text: '推荐',
                      ),
                      Tab(
                        text: '热门',
                      ),
                      Tab(
                        text: '视频',
                      ),
                      Tab(
                        text: '热搜',
                      ),
                    ],
                  ),
                )
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
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('这是第3个tab页'),
                  ),
                  ListTile(
                    title: Text('这是第3个tab页'),
                  ),
                  ListTile(
                    title: Text('这是第3个tab页'),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('这是第4个tab页'),
                  ),
                  ListTile(
                    title: Text('这是第4个tab页'),
                  ),
                  ListTile(
                    title: Text('这是第4个tab页'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
