import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是1个文本组件'),
          ),
          ListTile(
            title: Text('我是2个文本组件'),
          ),
          ListTile(
            title: Text('我是3个文本组件'),
          )
        ],
      ),
    );
  }
}
