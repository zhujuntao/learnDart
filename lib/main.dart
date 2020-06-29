import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

//无状态组件 StatelessWidget
//MaterialApp 封装了实现Material desjgn 所需的一些Widget 一般作为顶层的Widget

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //主页
      home: Scaffold(
        //显示在页面顶部
        appBar: AppBar(
          title: Text('Flutter Demo'),
          centerTitle: true,
        ),
        //当前界面显示的主要内容
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.pink), //设置主题颜色
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '你好 flutter 1111',
        textDirection: TextDirection.ltr, //文本显示方式
        style: TextStyle(
          fontSize: 40.0,
          //color: Colors.blueAccent,
          color: Color.fromARGB(244, 233, 121, 1),
        ),
      ),
    );
  }
}
