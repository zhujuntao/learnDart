import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  String title;
  final arguments;

  FormPage({this.title = "表单", this.arguments});

  @override
  _FormPageState createState() =>
      _FormPageState(title: this.title, arguments: this.arguments);
}

class _FormPageState extends State<FormPage> {
  String title;
  final arguments;

  _FormPageState({this.title = "表单", this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('表单数据1'),
            subtitle: Text('这是命名路由传值===:' +
                '${arguments != null ? arguments['id'] : '0'}'),
          ),
          ListTile(
            title: Text('表单数据2'),
          ),
          ListTile(
            title: Text('表单数据3'),
          ),
          ListTile(
            title: Text('表单数据4'),
          ),
        ],
      ),
    );
  }
}
