import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a padding demo'),
        ),
//        body: LayoutDemo(),
        body: StackTest(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
//      alignment属性是控制层叠的位置的，建议在两个内容进行层叠时使用。它有两个值X轴距离和Y轴距离，
//      值是从0到1的，都是从上层容器的左上角开始算起的。
        //alignment: Alignment.center,
        /*
         * X 的值
         * 值为-1.0对应于最左边的边。值为1.0
         * 对应于最右边的边。值并不局限于这个范围;
         * 小于-1.0的值表示距左边缘左侧的位置，
         * 大于1.0的值表示右边右边的位置边缘。
         *
         *  的值
         * 值为-1.0对应于最上边的边。值为1.0
         * 对应于最下边的边。值并不局限于这个范围;
         * 小于-1.0的值表示距上边缘上侧的位置，
         * 大于1.0的值表示下边下边的位置边缘。
         * */
        //alignment: Alignment(0.1, 0.1),

        // 值是从0到1的，都是从上层容器的左上角开始算起的。
        alignment: FractionalOffset(0.1, 0.1),
        children: <Widget>[
          Container(
            height: 400.0,
            width: 300.0,
            color: Colors.cyan,
          ),
          Text(
            'this is 文本1',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class StackTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400.0,
        width: 300.0,
        color: Colors.cyan,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 60,
              left: 60,
              child: Icon(
                Icons.cake,
                size: 40,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Icon(
                Icons.call_made,
                size: 40,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.settings,
                size: 36,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.select_all,
                size: 48,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
