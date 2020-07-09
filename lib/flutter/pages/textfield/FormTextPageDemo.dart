import 'package:flutter/material.dart';

class FormTextPageDemo extends StatefulWidget {
  @override
  _FormTextPageDemoState createState() => _FormTextPageDemoState();
}

class _FormTextPageDemoState extends State<FormTextPageDemo> {
  String username;
  String info;
  int sex;
  //创建数组
  List hobby = [
    {'checked': true, 'title': '吃饭'},
    {'checked': false, 'title': '睡觉'},
    {'checked': true, 'title': '写代码'},
  ];

  void _sexChanged(v) {
    setState(() {
      this.sex = v;
    });
  }

  List<Widget> _getHabby() {
    List<Widget> tempList = [];
    for (var i = 0; i < hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(hobby[i]['title'] + ":"),
          Checkbox(
              value: hobby[i]['checked'],
              onChanged: (v) {
                setState(() {
                  hobby[i]['checked'] = v;
                });
              })
        ],
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学员登录信息系统'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '请输入信息',
              ),
              onChanged: (value) {
                setState(() {
                  this.username = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                    value: 1,
                    groupValue: this.sex,
                    onChanged: this._sexChanged),
                SizedBox(
                  width: 20,
                ),
                Text('女'),
                Radio(
                    value: 2,
                    groupValue: this.sex,
                    //this._sexChanged 将方法赋值给onChanged
                    onChanged: this._sexChanged),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: this._getHabby(),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '描述信息',
              ),
              onChanged: (value) {
                setState(() {
                  this.info = value;
                });
              },
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 40.0,
              child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('提交信息'),
                  onPressed: () {
                    print(this.username);
                    print(this.sex == 1 ? '男' : '女');
                    print(this.hobby);
                    print(this.info);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
