import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  final Map arguments;

  const ProductInfoPage({Key key, this.arguments}) : super(key: key);

  @override
  _ProductInfoPageState createState() =>
      _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  final Map arguments;

  _ProductInfoPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情展示页'),
      ),
      body: Container(
        color: Colors.green,
        child: Text('商品详情数据展示页:${arguments['pid']}'),
      ),
    );
  }
}
