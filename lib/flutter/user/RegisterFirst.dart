import 'package:flutter/material.dart';

class RegisterFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册第一步-输入手机号'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('这是注册的第一步，请输入手机号点击下一步'),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/registerSecond');
              //替换路由
//              Navigator.pushReplacementNamed(context, '/registerSecond');
            },
            child: Text('下一步'),
          )
        ],
      ),
    );
  }
}
