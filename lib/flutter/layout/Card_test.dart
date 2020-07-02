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
//        body: LayoutDemo(),
//        body: CardLayoutTest(),
        body: CardLayoutTestData(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '张三',
                  style: TextStyle(fontSize: 24.0),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text(
                  '电话：13112345678',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              ListTile(
                title: Text(
                  '地址：嘻嘻嘻嘻嘻嘻',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '外网',
                  style: TextStyle(fontSize: 24.0),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text(
                  '电话：13112345678',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              ListTile(
                title: Text(
                  '地址：嘻嘻嘻嘻嘻嘻',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CardLayoutTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.itying.com/images/flutter/2.png'),
                ),
                title: Text('xxxxx'),
                subtitle: Text('xxxxx'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CardLayoutTestData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listData.map((e) {
      return Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 20 / 9,
              child: Image.network(
                e['imageUrl'],
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(e['imageUrl']),
              ),
              title: Text(e['title']),
              subtitle: Text(e['author']),
            ),
          ],
        ),
      );
    }).toList());
  }
}
