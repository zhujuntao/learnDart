import 'package:flutter/material.dart';

import 'Row_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a padding demo'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 180.0,
                color: Colors.cyan,
                child: Text('this color is a cyan'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  height: 180.0,
                  child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: 180.0,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 85.0,
                        child: Image.network(
                          'https://www.itying.com/images/flutter/2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 85.0,
                        child: Image.network(
                          'https://www.itying.com/images/flutter/3.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  )),
            ),
          ],
        )
      ],
    );
  }
}
