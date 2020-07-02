import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a padding demo'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      width: 400.0,
      color: Colors.pink,
      child: Column(
        //垂直布局

        /*在设置对齐方式的时候你会发现右mainAxisAlignment属性，意思就是主轴对齐方式，那什么是主轴，什么又是幅轴那。

        main轴：如果你用column组件，那垂直就是主轴，如果你用Row组件，那水平就是主轴。

        cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。比如Row组件，那垂直就是幅轴，Column组件的幅轴就是水平方向的。*/

        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //平均分
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconContainer(Icons.settings, size: 48, color: Colors.cyan),
          IconContainer(Icons.home, size: 48, color: Colors.green),
          IconContainer(Icons.select_all, size: 48, color: Colors.amber),
        ],
      ),
    );
  }
}

//自定义按钮
class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData iconData;

  IconContainer(this.iconData, {this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(
          this.iconData,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}
