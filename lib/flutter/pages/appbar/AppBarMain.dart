import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      initialRoute: '/appbarDemoPage',
      initialRoute: '/',
      onGenerateRoute: onMyGenerateRoute,
    );
  }
}
