import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* home: Scaffold(
        appBar: AppBar(
          title: Text('textfield 演示'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
                child: Text('跳转表单演示页'),
                onPressed: () {
                  Navigator.pushNamed(context, '/textFieldDemoPage');
                }),
          ],
        ),
      ),*/
//      initialRoute:'/textFieldDemoPage',
//      initialRoute: '/radioPageDemo',
      initialRoute: '/formTextPageDemo',
      onGenerateRoute: onMyGenerateRoute,
    );
  }
}
