/*
*
* https://github.com/google/flutter-provide
*
* https://pub.dev/packages/provide/example
* */

import 'package:flutter/material.dart';
import 'package:flutterapp/provide/counter.dart';
import 'package:flutterapp/provide/my_name.dart';
import 'package:provide/provide.dart';

void main() {
  var counter = new Counter();
  var myname = MyName();
  var providers = Providers();
  providers
    ..provide(Provider<Counter>.value(counter))
    ..provide(Provider<MyName>.value(myname));

  runApp(ProviderNode(child: ProviderTest(), providers: providers));
}

class ProviderTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('provider test'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[NumberCom(), ShowName(), MyButton()],
          ),
        ),
      ),
    );
  }
}

class ShowName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Provide<MyName>(
        builder: (context, child, myname) {
          return Text(
            '${myname.name}',
            style: Theme.of(context).textTheme.display1,
          );
        },
      ),
    );
  }
}

class NumberCom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 200),
        child: Provide<Counter>(builder: (context, child, counter) {
          return Text(
            '${counter.value}',
            style: Theme.of(context).textTheme.display1,
          );
        }));
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text('递增'),
          onPressed: () {
            Provide.value<Counter>(context).increment();
            Provide.value<MyName>(context).setName();
          }),
    );
  }
}

/*class MyName with ChangeNotifier {
  String name = '张三';

  setName() {
    name = '李四';
    notifyListeners();
  }
}*/
