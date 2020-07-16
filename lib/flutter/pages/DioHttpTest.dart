import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:flutterapp/config/httpHeaders.dart';

class DioHttpTest extends StatefulWidget {
  @override
  _DioHttpTestState createState() => _DioHttpTestState();
}

class _DioHttpTestState extends State<DioHttpTest> {
  TextEditingController typeController = TextEditingController();
  String showText = '欢迎你来到美好人间';
  String showStr = '还没有数据。。。';

  @override
  Widget build(BuildContext context) {
    getData();
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('美好人间'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  autofocus: false,
                  controller: typeController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: '美女类型',
                    helperText: '请输入你喜欢的类型',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(child: Text('选择完毕'), onPressed: _choiseAction),
                SizedBox(
                  height: 20,
                ),
                Text(
                  showText,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _choiseAction() {
    print('开始选择你喜欢的类型。。。。。。。。。。。。');
    if (typeController.text.toString() == '') {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('选择类型不能为空'),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('确定')),
              ],
            );
          });
    } else {
      getHttp(typeController.text.toString()).then((value) {
        setState(() {
          showText = value['data']['name'].toString();
        });
      });
    }
  }

  Future getHttp(String TypeText) async {
    try {
      Response response;
      var data = {'name': TypeText};
      response = await Dio().get(
          "https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian",
          queryParameters: data);
      return response.data;
    } catch (e) {
      return print(e);
    }
  }

  void _jike() {
    print('----开始请求极客学院数据---');
    getData().then((value) {
      setState(() {
        showStr = value;
      });
    });
  }

  Future getData() async {
    try {
      Response response;
      Dio dio = new Dio();
      dio.options.headers = httpHeaders;
      response =
          await dio.get('https://time.geekbang.org/serv/v1/column/newAll');
      print(response);
      return response.data;
    } catch (e) {
      return print(e);
    }
  }
}
