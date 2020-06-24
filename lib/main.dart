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
          title: Text('Flutter Demo'),
          centerTitle: true,
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.pink),//设置主题颜色
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '你好 flutter 1111',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          //color: Colors.blueAccent,
          color: Color.fromARGB(244, 233, 121, 1),
        ),
      ),
    );
  }
}
