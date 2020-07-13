import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperTest extends StatefulWidget {
  @override
  _SwiperTestState createState() => _SwiperTestState();
}

class _SwiperTestState extends State<SwiperTest> {
  List<Map> list = [
    {'url': 'https://www.itying.com/images/flutter/1.png'},
    {'url': 'https://www.itying.com/images/flutter/2.png'},
    {'url': 'https://www.itying.com/images/flutter/3.png'},
    {'url': 'https://www.itying.com/images/flutter/4.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图展示'),
      ),
//      引导页
      /*body:Swiper(
        itemCount: list.length,
        control: new SwiperControl(),//左右箭头
        pagination: new SwiperPagination(),//分页器
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            //"http://via.placeholder.com/350x150"
            list[index]['url'],
            fit: BoxFit.fill,
          );
        },
      ),*/
      body: Column(
        children: <Widget>[
          Container(
//            height: 150,
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Swiper(
                  loop: true,//无限轮播
                  autoplay: true,//自动轮播
                  itemCount: list.length,
                  control: new SwiperControl(), //左右箭头
                  pagination: new SwiperPagination(), //分页器
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.network(
                      //"http://via.placeholder.com/350x150"
                      list[index]['url'],
                      fit: BoxFit.fill,
                    );
                  },
                ),
              )),
          Row(
            children: <Widget>[
              Text('文本展示'),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            height: 150,
            child: Swiper(
                layout: SwiperLayout.CUSTOM,
                customLayoutOption: new CustomLayoutOption(
                    startIndex: -1,
                    stateCount: 3
                ).addRotate([
                  -45.0/180,
                  0.0,
                  45.0/180
                ]).addTranslate([
                  new Offset(-370.0, -40.0),
                  new Offset(0.0, 0.0),
                  new Offset(370.0, -40.0)
                ]),
                itemWidth: 300.0,
                itemHeight: 200.0,
                loop: true,//无限轮播
                autoplay: true,//自动轮播
                itemCount: list.length,
                control: new SwiperControl(), //左右箭头
                pagination: new SwiperPagination(), //分页器

                itemBuilder: (BuildContext context, int index) {
                 /* return new Image.network(
                    //"http://via.placeholder.com/350x150"
                    list[index]['url'],
                    fit: BoxFit.fill,
                  );*/
                  return new Container(
//                    color: Colors.grey,
                    child: new Center(
                      child: Image.network(
                        //"http://via.placeholder.com/350x150"
                        list[index]['url'],
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              ),

          ),
        ],
      ),
    );
  }
}
