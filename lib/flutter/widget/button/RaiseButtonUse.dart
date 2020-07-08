import 'package:flutter/material.dart';

/*
* RaisedButton : 凸起的按钮，其实j就是material design 风格的按钮
* FlatButton : 扁平化的按钮
* OutlineButton: 线框按钮
* IconButton :图标按钮
* ButtonBar : 按钮组
* FloatingActionButton :浮动按钮
*
*
* 属性；
*  splashColor: Colors.red,//设置水波纹颜色
*
*/

class RaiseButtonDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        //子视图，一般为Icon
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 40,
        ),
        onPressed: () {
          print('FloatingActionButton');
        },
        backgroundColor: Colors.amber,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text('普通按钮'),
                  onPressed: () {
                    print('普通按钮');
                  }),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                  child: Text('有颜色按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print('有颜色按钮');
                  }),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                  child: Text('有阴影按钮'),
//                  color: Colors.blue,
//                  textColor: Colors.white,
                  //值越大阴影范围越大
                  elevation: 100,
                  onPressed: () {
                    print('有阴影按钮');
                  })
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 200,
                child: RaisedButton(
                    child: Text('宽度高度'),
                    textColor: Colors.green,
                    color: Colors.pink,
                    onPressed: () {
                      print('宽度高度');
                    }),
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton.icon(
                  textColor: Colors.green,
                  color: Colors.indigoAccent,
                  onPressed: () {
                    print('图标按钮');
                  },
                  icon: Icon(Icons.search),
                  label: Text('图标按钮'))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                height: 60,
                child: RaisedButton(
                    child: Text('自适应按钮'),
                    textColor: Colors.green,
                    color: Colors.amber,
                    onPressed: () {
                      print('自适应按钮');
                    }),
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text('圆角按钮'),
                  textColor: Colors.green,
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    print('圆角按钮');
                  }),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 80,
                child: RaisedButton(
                    child: Text('圆角按钮'),
                    textColor: Colors.green,
                    color: Colors.amber,
                    splashColor: Colors.red,
                    //设置水波纹颜色
                    shape: CircleBorder(side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      print('圆角按钮');
                    }),
              ),
              SizedBox(
                width: 5,
              ),
              FlatButton(
                onPressed: () {
                  print('扁平化按钮');
                },
                child: Text('扁平化按钮'),
                color: Colors.blue,
                textColor: Colors.redAccent,
              ),
              SizedBox(
                width: 5,
              ),
              /* OutlineButton(
                onPressed: () {},
//              color: Colors.red,
//              textColor: Colors.amber,
                child: Text('边框按钮'),
              )*/
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                onPressed: () {},
//              color: Colors.red,
//              textColor: Colors.amber,
                child: Text('边框按钮'),
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                child: OutlineButton(
                  onPressed: () {},
//              color: Colors.red,
//              textColor: Colors.amber,
                  child: Text('注销'),
                ),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                      child: Text('登录'),
                      textColor: Colors.green,
                      color: Colors.amber,
                      //设置水波纹颜色
                      splashColor: Colors.red,
                      onPressed: () {
                        print('圆角按钮');
                      }),
                  RaisedButton(
                      child: Text('注册'),
                      textColor: Colors.green,
                      color: Colors.amber,
                      //设置水波纹颜色
                      splashColor: Colors.red,
                      onPressed: () {
                        print('圆角按钮');
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  CoustomRaiseButton(
                    text: '自定义按钮',
                    textColors: Colors.blue,
                    width: 100.0,
                    height: 50.0,
                    pressed: () {
                      print('自定义按钮');
                    },
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CoustomRaiseButton extends StatelessWidget {
  final height;
  final width;
  final pressed;
  final text;
  final textColors;

  const CoustomRaiseButton(
      {Key key,
      this.text,
      this.textColors,
      this.height = 30.0,
      this.width = 80.0,
      this.pressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        textColor: this.textColors,
        onPressed: this.pressed,
      ),
    );
  }
}
