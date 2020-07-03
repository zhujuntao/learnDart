/*
* StatelesWidget  无状态组件，状态不可改变的widget
*
* StatefulWidget  有状态组件，状态可能在widget生命周期改变。
* （如果想改变页面的数据，需要用StatefulWidget）
* */

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a demo'),
        ),
//        body: HomePage(),
        body: StateListDemo(),
      ),
    );
  }
}

//有状态组件
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
//        SizedBox(height: 200,),
        Chip(label: Text('${this.num}')),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
            child: Text('按钮'),
            onPressed: () {
              setState(() {
                //只有有状态的组件才有此方法
                this.num++;
              });
            })
      ],
    );
  }
}

class StateListDemo extends StatefulWidget {
  @override
  _StateStateListDemo createState() => _StateStateListDemo();
}

class _StateStateListDemo extends State<StateListDemo> {
  int count = 0;
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: list.map((e) {
            return ListTile(
              title: Text(e),
            );
          }).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
            child: Text('按钮'),
            onPressed: () {
              setState(() {
                this.count++;
                this.list.add("添加数据$count");
              });
            })
      ],
    );
  }
}
