import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品页面'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            child: Text('跳转到商品详情页面'),
            onPressed: () {
              Navigator.pushNamed(context, '/productinfo',
                  arguments: {'pid': 123456});
            },
            color: Colors.green,
            textColor: Colors.yellow,
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    );
  }
}
