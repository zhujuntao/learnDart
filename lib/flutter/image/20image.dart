import 'package:flutter/material.dart';

void main() {
  runApp(MyImageApp());
}

class MyImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter image demo'),
          centerTitle: true,
        ),
        body: ocalityLCon(),
//        body: ImageHome(),
      ),
    );
  }
}

class ImageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          'https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2534506313,1688529724&fm=26&gp=0.jpg',
          alignment: Alignment.topLeft,
          //显示位置
          color: Colors.amber,
          //配合使用，可以使图片的颜色和背景色混合
          colorBlendMode: BlendMode.darken,
          //配合ClipOval  图像裁剪使用
          width: 80.0,
          height: 100.0,
          //可能拉伸，可能裁剪，充满容器，不变形  ，contain 全图显示 显示原比例   fill 全图显示，可能拉伸，充满容器
          //fitWidth 横向填充
//          fit: BoxFit.cover,
          repeat: ImageRepeat.repeat, //平铺
        ),
        width: 300.0,
        height: 800.0,
        decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
              color: Colors.greenAccent,
              width: 5.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            )),
      ),
    );
  }
}

//加载本地图片
class ocalityLCon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          'images/2.0x/banner.png',
          width: 180,
          height: 200,
        ),
      ),
    );
  }
}
