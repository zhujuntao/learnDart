import 'package:flutter/material.dart';
import 'package:flutterapp/data/ListData.dart';

void main() {
  runApp(MyListApp());
}

class MyListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter demo'),
            centerTitle: true,
          ),
//          body: HomeContent()),
          body: GridHomeContent()),
    );
  }
}
//girdview的动态加载

class HomeContent extends StatelessWidget {
  /* List<Widget> _getGridList() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        // 设置高度没有用       height: 400.0,
        alignment: Alignment.center,
        color: Colors.cyan,
        child: Text(
          '这是第$i个容器',
          style: TextStyle(fontSize: 16.0),
        ),
      ));
    }
    return list;
  }*/

  List<Widget> _getGridList() {
    var templist = listData.map((e) {
      return Container(
//          color: Colors.cyan,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.cyan),
              borderRadius: BorderRadius.circular(5.0)),
          child: Column(
            children: <Widget>[
              Image.network(e['imageUrl']),
              SizedBox(
                height: 12,
              ), //利用 SizedBox 来撑开 设置图片和文案间距
              Text(
                e['title'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              )
            ],
          ));
    });
    return templist.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      //一行显示几个Widget
      crossAxisSpacing: 10.0,
      //网格间的空当，相当于每个网格之间的间距。 垂直方向
      mainAxisSpacing: 10.0,
      //相当于每个网格之间的间距。 水平方向
      padding: EdgeInsets.all(10.0),
      //padding:表示内边距
      //childAspectRatio:宽高比，这个值的意思是宽是高的多少倍，如果宽是高的2倍，那我们就写2.0，如果高是宽的2倍，我们就写0.5。
//      childAspectRatio: 0.7,

//      第一种
      /* children: <Widget>[
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
      ],*/
      //第2种
//      children: this._getGridList(),
//        第3种
      children: this._getGridList(),
    );
  }
}

class GridHomeContent extends StatelessWidget {
  Widget _getGridConList(context, index) {
    return Container(
//          color: Colors.cyan,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.cyan),
            borderRadius: BorderRadius.circular(5.0)),
        child: Column(
          children: <Widget>[
            Image.network(listData[index]['imageUrl']),
            SizedBox(
              height: 12,
            ), //利用 SizedBox 来撑开 设置图片和文案间距
            Text(
              listData[index]['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            )
          ],
        ));
  }

  //层叠样式
  Widget _getGridStackList(context, index) {
    return Container(
        height: 100.0,
        width: 100.0,
//          color: Colors.cyan,
        decoration: BoxDecoration(
            color: Colors.cyan,
            border: Border.all(width: 1, color: Colors.cyan),
            borderRadius: BorderRadius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.network(
                listData[index]['imageUrl'],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),

            //利用 SizedBox 来撑开 设置图片和文案间距
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                listData[index]['title'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      /* crossAxisCount: 2,
      //一行显示几个Widget
      crossAxisSpacing: 10.0,
      //网格间的空当，相当于每个网格之间的间距。 垂直方向
      mainAxisSpacing: 10.0,
      //相当于每个网格之间的间距。 水平方向
      padding: EdgeInsets.all(10.0),
      //padding:表示内边距
      //childAspectRatio:宽高比，这个值的意思是宽是高的多少倍，如果宽是高的2倍，那我们就写2.0，如果高是宽的2倍，我们就写0.5。
//      childAspectRatio: 0.7,*/
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //控制布局
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: listData.length,
//      itemBuilder: this._getGridConList,
      itemBuilder: this._getGridStackList,
    );
  }
}
