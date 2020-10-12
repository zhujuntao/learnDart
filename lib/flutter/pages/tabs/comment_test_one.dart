import 'package:flutter/material.dart';
import 'package:flutterapp/data/ListData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('tabbar'),
        ),
        body: CommentReferWidget(),
        /* body: DefaultTabController(
          length: 2,
          child: Container(
            height: 100.0,
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            child: TabBar(
              isScrollable: false,
              //是否需要滚动，true为需要
              // indicator: BoxDecoration(),//用于设定选中状态下的展示样式
              indicatorColor: Colors.pink,
              //选中下划线的颜色
              indicatorWeight: 5.0,
              //选中下划线的高度，值越大高度越高，默认为2
              indicatorSize: TabBarIndicatorSize.tab,
              //选中下划线的长度，label时跟文字内容长度一样，tab时跟一个Tab的长度一样
              labelColor: Colors.pink,
              //设置选中时的字体颜色，tabs里面的字体样式优先级最高
              labelStyle: TextStyle(fontSize: 20),
              //设置选中时的字体样式，tabs里面的字体样式优先级最高
              unselectedLabelColor: Colors.black,
              //设置未选中时的字体颜色，tabs里面的字体样式优先级最高
              unselectedLabelStyle: TextStyle(fontSize: 20),
              //设置未选中时的字体样式，tabs里面的字体样式优先级最高

              onTap: (index) {
                print('index====${index}');
              },
              tabs: <Widget>[
                Tab(
                  text: '查看详情',
                ),
                Tab(
                  text: '查看评论',
                ),
              ],
            ),
          ),
        ),*/
      ),
    );
  }
}

//https://my.oschina.net/u/1272314/blog/3135323
class CommentReferWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int refrecount = listData.length;
    Widget emptyWidget = Divider(
      color: Colors.transparent,
      height: 0.0,
    );

    if (refrecount > 0) {
      Widget referWidget;
      for (int index = 0; index < refrecount; index++) {
        referWidget = buildRefer(index, index == 0 ? emptyWidget : referWidget);
      }
      return referWidget;
    } else {
      return emptyWidget;
    }
  }

  Widget buildRefer(int index, Widget referWidget) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black12, width: 0.5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          referWidget,
          buildReferContent(index),
        ],
      ),
    );
  }

  Widget buildReferContent(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '${index + 1}',
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('${listData[index]['author']}'),
              Offstage(
                offstage: true,
                child: Text('${listData[index]['title']}'),
              ),
              Text('这里是评论的内容:${listData[index]['title']}')
            ],
          ))
        ],
      ),
    );
  }
}
