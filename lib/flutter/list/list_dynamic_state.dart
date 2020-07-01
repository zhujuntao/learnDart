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
          body: HomeContent()),
    );
  }
}
//listview的动态加载

class HomeContent extends StatelessWidget {
  /*List listbuilder = new List();

  HomeContent() {
    for (var i = 0; i <= 20; i++) {
      this.listbuilder.add(ListTile(
            title: Text('这是第$i个标题'),
          ));
    }
  }*/

  //自定义私有方法
  List<Widget> _getData() {
//    第二种
    /* List<Widget> list = new List();
    for (var i = 0; i <= 20; i++) {
      list.add(ListTile(
        title: Text('这是第$i个标题'),
      ));
    }
    return list;*/

//    第一种
    /* return [
      ListTile(
        title: Text('这是一个标题'),
      ),
      ListTile(
        title: Text('这是一个标题'),
      ),
      ListTile(
        title: Text('这是一个标题'),
      ),
      ListTile(
        title: Text('这是一个标题'),
      )
    ];*/

//    第三种
    var tempList = listData.map((value) {
      //修改listdata中值 在赋值给tempList
      return ListTile(
        title: Text(value['title']),
        subtitle: Text(value['author']),
        leading: Image.network(value['imageUrl']),
      );
    });
    //('xxxx','cccc')
    return tempList.toList();
  }

  Widget _getListData(context, index) {
    return ListTile(
      title: Text(listData[index]['title']),
      subtitle: Text(listData[index]['author']),
      leading: Image.network(listData[index]['imageUrl']),
    );
  }

  @override
  Widget build(BuildContext context) {
    /* return ListView(
      children: _getData(),
    );*/
    /* return ListView.builder(
      itemCount: this.listbuilder.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(this.listbuilder[index]),
        );
      },
    );*/
    return ListView.builder(
      itemCount: listData.length,
      /*itemBuilder: (context, index) {
        return ListTile(
          title: Text(listData[index]['title']),
          subtitle: Text(listData[index]['author']),
          leading: Image.network(listData[index]['imageUrl']),
        );
      },*/
      itemBuilder: this._getListData,
    );
  }
}
