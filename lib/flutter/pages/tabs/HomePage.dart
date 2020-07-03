import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/pages/SearchPage.dart';

/*
*
* flutter 中路由通俗讲就是页面跳转
* 在flutter中通过navigator组件管理路由导航。
* 并提供了管理堆栈的方法，navigator.push,navigator.pop
*
* 两种方式跳转
* 1.基本路由
* 2.命名路由
*
* */

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            child: Text('跳转到搜索页面'),
            onPressed: () {
              //child：可以放入容器，图标，文字。让你构建多彩的按钮。
              //onPressed：点击事件的相应，一般会调用Navigator组件。

              //Navigator.push：是跳转到下一个页面，它要接受两个参数一个是上下文context，另一个是要跳转的函数。
              /* Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new SecondScreen()));*/
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SearchPage()));
            },
            color: Colors.cyan,
            textColor: Colors.yellow,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }
}
