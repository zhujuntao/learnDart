import 'package:flutter/material.dart';

class RegisterSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二步-注册完成'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('输入验证码'),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/registerThird');
//              Navigator.pushReplacementNamed(context, '/registerThird');
            },
            child: Text('下一步'),
          )
        ],
      ),
    );
  }
}
