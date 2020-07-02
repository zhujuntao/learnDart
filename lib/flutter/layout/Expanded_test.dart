import 'package:flutter/material.dart';

import 'Row_test.dart';

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
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            IconContainer(Icons.settings, size: 48, color: Colors.cyan),
            Expanded(
              flex: 1,
              child: IconContainer(Icons.select_all,
                  size: 48, color: Colors.redAccent),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: IconContainer(Icons.select_all,
                  size: 48, color: Colors.redAccent),
            ),
            IconContainer(Icons.settings, size: 48, color: Colors.cyan),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child:
                  IconContainer(Icons.settings, size: 48, color: Colors.cyan),
            ),
            Expanded(
              flex: 2,
              child: IconContainer(Icons.select_all,
                  size: 48, color: Colors.redAccent),
            ),
            Expanded(
              flex: 1,
              child: IconContainer(Icons.home, size: 48, color: Colors.green),
            ),
          ],
        )
      ],
    );
  }
}
