import 'package:flutter/material.dart';

class TextFieldPageDemo extends StatefulWidget {
  @override
  _TextFieldPageDemoState createState() => _TextFieldPageDemoState();
}

class _TextFieldPageDemoState extends State<TextFieldPageDemo> {
  var _userName = new TextEditingController(); //初始化时给表单赋值
  var password;
  var flag = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userName.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
//          child: TextDemo()
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: '请输入',
                ),
                controller: _userName,
                onChanged: (value) {
                  setState(() {
                    _userName.text = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '请输入密码',
                ),
                onChanged: (value) {
                  password = value;
                  /* setState(() {
                    password = value;
                   // print(password);
                  });*/
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40.0,
                child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('登录'),
                    onPressed: () {
                      print(_userName.text);
                      print(password);
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                      value: flag,
                      activeColor: Colors.redAccent,
                      onChanged: (v) {
                        setState(() {
                          this.flag = v;
                        });
                      }),
                  SizedBox(
                    width: 20,
                  ),
                  Text(this.flag ? "选中" : "未选中"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              CheckboxListTile(
                  value: this.flag,
                  title: Text('标题'),
                  subtitle: Text('2级标题'),
                  secondary: Icon(Icons.help),
                  selected: this.flag,
                  //图标
                  onChanged: (v) {
                    setState(() {
                      this.flag = v;
                    });
                  })
            ],
          )),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(),
          SizedBox(
            height: 10,
          ),
          RaisedButton(child: Text('跳转表单演示页'), onPressed: () {}),
          SizedBox(
            height: 10,
          ),
          TextField(
            maxLength: 20,
            decoration: InputDecoration(
                hintText: '请输入内容', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
                icon: Icon(Icons.people),
                labelText: '用户名',
                hintText: '多行文本',
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true, //设置密码框
            maxLength: 20,

            decoration: InputDecoration(
                labelText: '密码',
                hintText: '密码框',
//                    labelStyle: TextStyle(),
                border: OutlineInputBorder()),
          ),
        ],
      ),
    );
  }
}
