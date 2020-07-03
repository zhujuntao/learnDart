import 'package:flutter/material.dart';
import 'package:flutterapp/data/ListData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a demo'),
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
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Wrap(
//        direction: Axis.vertical,//垂直布局  默认水平布局
        spacing: 10,
        //主轴间距
        runSpacing: 10,
        //run 主轴垂直方向的间距
        alignment: WrapAlignment.start,
        // 主轴对齐方式   起始位置对齐
        runAlignment: WrapAlignment.spaceAround,
        //run 可以理解为新的行或列，如果是水平方向布局，run可以理解为新的一行
        textDirection: TextDirection.ltr,
        //文本的对齐方式
        children: <Widget>[
          MyRaisedButton('第1季'),
          MyRaisedButton('第2季报表'),
          MyRaisedButton('第3季轻松打的'),
          MyRaisedButton('第4季对对对'),
          MyRaisedButton('第5季大概率点多'),
          MyRaisedButton('第6季欣赏'),
          MyRaisedButton('第7季版本'),
          MyRaisedButton('第8季'),
          MyRaisedButton('第9季订单'),
          MyRaisedButton('第10季'),
          MyRaisedButton('第11季'),
        ],
      ),
    );
  }
}

class MyRaisedButton extends StatelessWidget {
  final String text;

  const MyRaisedButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
//      textColor: Theme.of(context).accentColor,
      textColor: Colors.black,
      color: Colors.cyan,
      onPressed: () {},
    );
  }
}
