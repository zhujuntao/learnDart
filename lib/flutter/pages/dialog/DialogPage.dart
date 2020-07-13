import 'package:flutter/material.dart';
import 'package:flutterapp/flutter/widget/MyDialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息！'),
            content: Text('确认删除吗？'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    print('取消');
                    Navigator.pop(context, 'Cancel');
                  },
                  child: Text("取消")),
              FlatButton(
                  onPressed: () {
                    print('确定');
                    Navigator.pop(context, 'Ok');
                  },
                  child: Text("确定")),
            ],
          );
        });
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('选择内容'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('Option A'),
                onPressed: () {
                  print('Option A');
                  Navigator.pop(context, 'A');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('Option B'),
                onPressed: () {
                  print('Option B');
                  Navigator.pop(context, 'B');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('Option C'),
                onPressed: () {
                  print('Option C');
                  Navigator.pop(context, 'C');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('Option D'),
                onPressed: () {
                  print('Option D');
                  Navigator.pop(context, 'D');
                },
              ),
            ],
          );
        });
    print(result);
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 260,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('分享 A'),
                  onTap: () {
                    Navigator.pop(context, '分享 A');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 B'),
                  onTap: () {
                    Navigator.pop(context, '分享 B');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 C'),
                  onTap: () {
                    Navigator.pop(context, '分享 C');
                  },
                ),
              ],
            ),
          );
        });
    print(result);
  }

  _toastDemo() {
    Fluttertoast.showToast(
        msg: '提示信息',
        backgroundColor: Colors.cyan,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        //ios 使用
        timeInSecForIos: 1,
        fontSize: 16);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog弹框展示'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text('alert弹出-alerdialog弹框'), onPressed: _alertDialog),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                child: Text('select弹出框-Simpledialog弹框'),
                onPressed: _simpleDialog),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                child: Text('Acition底部弹出框-showmodleBottomSheet弹框'),
                onPressed: _modelBottomSheet),
            SizedBox(
              height: 20,
            ),
            RaisedButton(child: Text('第三方库弹出框'), onPressed: _toastDemo),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                child: Text('自定义弹出框'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return MyDialog(
                          title: '关于我们',
                          content: '详情请登录官方网站。。。。',
                        );
                      });
                }),
          ],
        ),
      ),
    );
  }
}
