import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/pages/tabs/Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三步-注册完成'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('输入密码完成注册'),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            onPressed: () {
              //使用替换路由跳转时，调用pop可以直接回到根路由
              //Navigator.of(context).pop();

              //返回根页面
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(
                      builder: (context) => new Tabs(index: 1)),
                  (route) => route == null);
            },
            child: Text('确定'),
          )
        ],
      ),
    );
  }
}
