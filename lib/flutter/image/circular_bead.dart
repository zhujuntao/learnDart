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
//        body: ImageHome(),
        body: CircleAvatarContent(),
//        body: ClipoverContent(),
      ),
    );
  }
}

class ImageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
            color: Colors.amber,
//            borderRadius: BorderRadius.all(Radius.circular(150.0)),
            borderRadius: BorderRadius.circular(150.0),
            image: DecorationImage(
                image: NetworkImage(
                  'https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2534506313,1688529724&fm=26&gp=0.jpg',
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}

class ClipoverContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1593499944&di=77b0f24afaafce7f49d954bf3794ad3b&src=http://a0.att.hudong.com/56/12/01300000164151121576126282411.jpg',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

//原型图片
class CircleAvatarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593510034937&di=72c5966a13b55f4b0b156f29970a779c&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F64%2F76%2F20300001349415131407760417677.jpg'),
          radius: 200,
        ),
      ),
    );
  }
}
