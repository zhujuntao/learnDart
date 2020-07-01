import 'package:flutter/material.dart';

void main() {
  runApp(MyListApp());
}

class MyListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter demo'),
            centerTitle: true,
          ),
          body: HomeContent()),
//          body: BasicListView()),
    );
  }
}

/*
 * ListView组件的scrollDirection属性只有两个值，一个是横向滚动，一个是纵向滚动。
 * 默认的就是垂直滚动，所以如果是垂直滚动，我们一般都不进行设置。
 * Axis.horizontal:横向滚动或者叫水平方向滚动。
 * Axis.vertical:纵向滚动或者叫垂直方向滚动。
 * */
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView(
//      scrollDirection: Axis.vertical, //默认是垂直
        scrollDirection: Axis.horizontal, //水平布局
        padding: EdgeInsets.all(20),
        //子元素
        children: <Widget>[
          Container(
            width: 180,
            height: 180,
            color: Colors.amber,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              '这是一个标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
              ),
            ),
          ),
          Container(
              width: 180,
              height: 180,
              color: Colors.purple,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: ListView(
                children: <Widget>[
                  Text(
                    '这是一个标题',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                    ),
                  ),
                  Image.network('https://www.itying.com/images/flutter/2.png'),
                  Container(
                    height: 80,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      '这是一个标题',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                  ),
                  Image.network('https://www.itying.com/images/flutter/3.png'),
                ],
              )),
          Container(
            width: 180,
            height: 180,
            color: Colors.red,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              '这是一个标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
              ),
            ),
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.blue,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              '这是一个标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
              ),
            ),
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.deepPurple,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              '这是一个标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
              ),
            ),
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.greenAccent,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              '这是一个标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
              ),
            ),
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.cyan,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              '这是一个标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//基础列表
class BasicListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical, //默认是垂直
      //子元素
      children: <Widget>[
        ListTile(
          title: Text(
            '小破站”和它的守护者们：B站为何敢推出10年大会员？',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          subtitle:
              Text('“小破站”和它的守护者们：B站为何敢推出10年大会员？“小破站”和它的守护者们：B站为何敢推出10年大会员？'),
        ),
        ListTile(
          title: Text(
            '小破站”和它的守护者们：B站为何敢推出10年大会员？',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          subtitle:
              Text('“小破站”和它的守护者们：B站为何敢推出10年大会员？“小破站”和它的守护者们：B站为何敢推出10年大会员？'),
        ),
        ListTile(
          title: Text(
            '小破站”和它的守护者们：B站为何敢推出10年大会员？',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          subtitle:
              Text('“小破站”和它的守护者们：B站为何敢推出10年大会员？“小破站”和它的守护者们：B站为何敢推出10年大会员？'),
        ),
        ListTile(
          title: Text(
            '小破站”和它的守护者们：B站为何敢推出10年大会员？',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          subtitle:
              Text('“小破站”和它的守护者们：B站为何敢推出10年大会员？“小破站”和它的守护者们：B站为何敢推出10年大会员？'),
        ),
        ListTile(
          title: Text(
            '小破站”和它的守护者们：B站为何敢推出10年大会员？',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          subtitle:
              Text('“小破站”和它的守护者们：B站为何敢推出10年大会员？“小破站”和它的守护者们：B站为何敢推出10年大会员？'),
        ),
        ListTile(
          title: Text(
            '小破站”和它的守护者们：B站为何敢推出10年大会员？',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          subtitle:
              Text('“小破站”和它的守护者们：B站为何敢推出10年大会员？“小破站”和它的守护者们：B站为何敢推出10年大会员？'),
        ),
      ],
    );
  }
}

//图文混合列表使用

class MixtureCon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical, //默认是垂直
      padding: EdgeInsets.all(20),
      //子元素
      children: <Widget>[
        Image.network('https://www.itying.com/images/flutter/2.png'),
        Container(
          height: 80,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            '这是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ),
        Image.network('https://www.itying.com/images/flutter/3.png'),
        Container(
          height: 80,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text(
            '这是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ),
        Image.network('https://www.itying.com/images/flutter/4.png'),
        ListTile(
          //前面图标
          leading: Image.network(
            'https://www.itying.com/images/flutter/1.png',
            width: 80,
            height: 100,
            repeat: ImageRepeat.noRepeat,
            fit: BoxFit.cover,
          ),
          title: Text(
            '小破站”和它的守护者们：B站为何敢推出10年大会员？',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          subtitle:
              Text('“小破站”和它的守护者们：B站为何敢推出10年大会员？“小破站”和它的守护者们：B站为何敢推出10年大会员？'),
          trailing: Icon(Icons.list),
        ),
        ListTile(
          //前面图标
          leading: Icon(
            Icons.settings,
            size: 48.0,
            color: Colors.amber,
          ),
          title: Text(
            '小破站”和它的守护者们：B站为何敢推出10年大会员？',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          subtitle:
              Text('“小破站”和它的守护者们：B站为何敢推出10年大会员？“小破站”和它的守护者们：B站为何敢推出10年大会员？'),
          trailing: Icon(Icons.list),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            size: 48.0,
            color: Colors.greenAccent,
          ),
          title: Text(
            '小破站”和它的守护者们：B站为何敢推出10年大会员？',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          subtitle:
              Text('“小破站”和它的守护者们：B站为何敢推出10年大会员？“小破站”和它的守护者们：B站为何敢推出10年大会员？'),
          trailing: Icon(Icons.list),
        ),
      ],
    );
  }
}
