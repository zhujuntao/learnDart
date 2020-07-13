import 'dart:convert';

import 'package:flutter/material.dart';

//import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class HttpTest extends StatefulWidget {
  @override
  _HttpTestState createState() => _HttpTestState();
}

class _HttpTestState extends State<HttpTest> {
  List _list = [];

//  List _childList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getDataInfo();
    /* Map userinfo = {'name': '张三', 'age': 20};
    print(json.encode(userinfo));*/
    /* String userInfo='{"name":"张三","age":20}';
   Map user=json.decode(userInfo);
   print('----'+user['name']);*/
  }

  _getDataInfo() async {
    /*  var url = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }*/
    var apiUrl = 'http://a.itying.com/api/productlist';
    var result = await http.get(apiUrl);
    if (result.statusCode == 200) {
      print(result.body);
      setState(() {
        this._list = json.decode(result.body)['result'];
      });
    } else {
      print('----${result.statusCode}---失败');
    }
  }

  _postDataInfo() async {
    var url = 'https://example.com/whatsit/create';
    var response =
        await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    print(await http.read('https://example.com/foobar.txt'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body: this._list.length > 0
          ? ListView(
              children: this._list.map((e) {
                /* setState(() {
                  _childList = e["list"];
                });*/
                List _childList = e["list"];

                return Column(
                  children: <Widget>[
                    Text(
                      e['title'] + ":",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    /*Text(
                        e["list"].length > 0 ? e["list"][0]["title"] : "暂无数据！"),*/
                    ListView.builder(
                        shrinkWrap: true,
                        physics: new NeverScrollableScrollPhysics(),
                        itemCount: _childList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(_childList[index]['title']),
                          );
                        }),
                    Divider(),
                  ],
                );
              }).toList(),
            )
          : Text('加载中。。。'),
    );
  }
}
