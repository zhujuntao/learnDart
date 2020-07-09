import 'package:flutter/material.dart';

class RadioPageDemo extends StatefulWidget {
  @override
  _RadioPageDemoState createState() => _RadioPageDemoState();
}

class _RadioPageDemoState extends State<RadioPageDemo> {
  int sex = 1;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radio演示'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                    value: 1,
                    groupValue: this.sex,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                      });
                    }),
                SizedBox(
                  width: 10,
                ),
                Text('女'),
                Radio(
                    value: 2,
                    //选择组的值
                    groupValue: this.sex,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                      });
                    })
              ],
            ),
            Row(
              children: <Widget>[
                Text('${this.sex}'),
                Text(this.sex == 1 ? "男" : "女"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            Column(
              children: <Widget>[
                RadioListTile(
                    value: 1,
                    groupValue: this.sex,
                    title: Text('标题'),
                    subtitle: Text('2标题'),
                    secondary: Icon(Icons.category),
                    selected: this.sex == 1,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                      });
                    }),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                RadioListTile(
                    value: 2,
                    groupValue: this.sex,
                    title: Text('标题'),
                    subtitle: Text('2标题'),
                    secondary: Image.network(
                        'https://www.itying.com/images/flutter/2.png'),
                    selected: this.sex == 2,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                      });
                    }),
                SizedBox(
                  height: 10,
                ),
                Switch(
                    value: this.flag,
                    onChanged: (v) {
                      setState(() {
                        print(v);
                        this.flag = v;
                      });
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
