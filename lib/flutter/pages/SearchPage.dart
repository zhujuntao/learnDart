import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final arguments;
  SearchPage({this.arguments});
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面'),
      ),
      body: Text('搜索页面内容区域。。。'),
    );
  }
}
