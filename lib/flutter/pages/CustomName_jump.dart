import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/pages/FormPage.dart';
import 'package:flutterapp/flutter/pages/SearchPage.dart';
import 'package:flutterapp/flutter/pages/tabs/Tabs.dart';
import 'package:flutterapp/flutter/routes/Routes.dart';

//https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    '/form': (context, {arguments}) => FormPage(arguments: arguments),
    '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      home: Tabs(),
      initialRoute: '/',
      onGenerateRoute: onMyGenerateRoute,
      /* routes: {
        '/form':(context)=>FormPage(),
        '/search':(context)=>SearchPage(),
      },*/
    );
  }
}
