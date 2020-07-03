import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/pages/FormPage.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    /* return Container(
      color: Colors.amber,
      child: Text('我是分类组件'),
    );*/
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到表单页面并传值'),
          onPressed: () {
//            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormPage()));
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return FormPage(title: '我是分类跳转传值');
            }));
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
