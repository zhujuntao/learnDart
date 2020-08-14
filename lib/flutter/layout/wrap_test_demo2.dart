import 'package:flutter/material.dart';
import 'package:flutterapp/data/ListData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a demo'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 70,
          height: 600,
          color: Colors.black12,
          padding: EdgeInsets.all(5),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              SizedBox(height: 10,),
              Text(
                '条目1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目221',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目331',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目441',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目551',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目661',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目771',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目881',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目ff1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目dd1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目ss1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目ee1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目qq1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(
                '条目ww1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              Text(
                '条目ww1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),

              SizedBox(height: 10,),
              Text(
                '条目ww1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              Text(
                '条目ww1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              Text(
                '条目ww1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              Text(
                '条目ww1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              height:520,
              width: 340,
              child: ListView(
                children: <Widget>[
                  Wrap(
                    direction: Axis.horizontal,
//        direction: Axis.vertical,//垂直布局  默认水平布局
                    spacing: 2,
                    //主轴间距
                    runSpacing: 2,
                    children: <Widget>[
                      Image.network('https://www.itying.com/images/flutter/1.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/2.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/3.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/4.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/5.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/6.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/1.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/2.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/3.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/4.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/5.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/2.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/4.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/3.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/1.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/5.png',
                          width: 120),
                      Image.network('https://www.itying.com/images/flutter/1.png',
                          width: 120),
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class MyRaisedButton extends StatelessWidget {
  final String text;

  const MyRaisedButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
//      textColor: Theme.of(context).accentColor,
      textColor: Colors.black,
      color: Colors.cyan,
      onPressed: () {},
    );
  }
}
