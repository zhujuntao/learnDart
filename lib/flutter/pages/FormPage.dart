import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  String title;

  FormPage({this.title = "表单"});

  @override
  _FormPageState createState() => _FormPageState(title: this.title);
}

class _FormPageState extends State<FormPage> {
  String title;

  _FormPageState({this.title = "表单"});

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
