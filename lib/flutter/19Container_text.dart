import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter demo'),
            centerTitle: true,
          ),
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //容器
        child: Text(
          '我是一个文本,各位安居房来看；个卡拉斯卡老公就是了肯德基肝爽颗粒SDK里就法兰克福',
//          textAlign: TextAlign.justify, //两端对齐
          textAlign: TextAlign.left,
          //两端对齐
          overflow: TextOverflow.ellipsis,
          //显示省略。。。  ，fade 渐变
//          overflow: TextOverflow.fade, //显示省略。。。  ，fade 渐变
          maxLines: 1,
          textScaleFactor: 1.2,
          //字体缩放
          style: TextStyle(
            fontSize: 24.0,
//            color: Color.fromARGB(255, r, g, b),
            color: Colors.amber,
            fontWeight: FontWeight.w800,//加粗
            fontStyle: FontStyle.italic,
            //倾斜
//            decoration: TextDecoration.lineThrough,
          //下划线等设置
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.solid,
            letterSpacing: 5.0,//字间距
          ),
        ),
        alignment: Alignment.center,
        width: 300.0,
        height: 400.0,
        padding: const EdgeInsets.fromLTRB(10.0, 100.0, 0.0, 0.0),
        margin: const EdgeInsets.all(20.0),
//        transform: Matrix4.translationValues(50.0, 0.0, 0.0),//，位移时使用
//        transform: Matrix4.rotationZ(0.2),//旋转
        transform: Matrix4.diagonal3Values(1.2, 1, 1),
        //缩放拉伸

        decoration: BoxDecoration(
          //设置边框背景
//          color: Colors.blue,
          gradient: const LinearGradient(colors: [
            Colors.blue,
            Colors.purple,
            Colors.deepOrange,
          ]),
          border: Border.all(
            color: Colors.green,
            width: 2.0,
          ),
//           borderRadius:BorderRadius.circular(8.0)//圆角
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
