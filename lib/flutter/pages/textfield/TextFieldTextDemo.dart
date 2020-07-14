import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/routes/Routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      配置显示中文日期
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],

      /* home: Scaffold(
        appBar: AppBar(
          title: Text('textfield 演示'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
                child: Text('跳转表单演示页'),
                onPressed: () {
                  Navigator.pushNamed(context, '/textFieldDemoPage');
                }),
          ],
        ),
      ),*/
//      initialRoute:'/textFieldDemoPage',
//      initialRoute: '/radioPageDemo',
//      initialRoute: '/formTextPageDemo',
//      initialRoute: '/datePickerTestDemo',
//      initialRoute: '/datePickerPage',
//      initialRoute: '/swiperTest',
//      initialRoute: '/dialogPage',
//      initialRoute: '/httpTest',
      initialRoute: '/dioTest',
      onGenerateRoute: onMyGenerateRoute,
    );
  }
}
