import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String title;
  String content;

  MyDialog({this.title = "", this.content = ""});

  _showTimer(context) {
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      print('执行关闭---');
      Navigator.pop(context);
      //t.cancel();
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(this.title),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                child: Text(
                  this.content,
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
