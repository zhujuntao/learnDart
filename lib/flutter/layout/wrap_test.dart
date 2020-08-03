import 'package:flutter/material.dart';
import 'package:flutterapp/data/ListData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a demo'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

/*
Key key,
this.direction = Axis.horizontal,//设置水平局部还是垂直布局
this.alignment = WrapAlignment.start,//设置元素的其实位置，

this.spacing = 0.0,//在direction: Axis.horizontal的时候指左右两个Widget的间距,在direction: Axis.vertical的时候指上下两个widget的间距
this.runAlignment = WrapAlignment.start,//设置widget与widget在水平或者垂直轴上的间距
WrapAlignment.start//每一行（列）子Widget在纵（横）轴上的排列，全部子Widget从顶部开始展示
WrapAlignment.end//每一行（列）子Widget在纵（横）轴上的排列，全部子Widget挨着底部展示
WrapAlignment.center//每一行（列）子Widget在纵（横）轴上的排列，全部子widget在中间展示
WrapAlignment.spaceBetween//每一行（列）子Widget在纵（横）轴上的排列，两两子widget之间间距相等，最上最下子widget挨着边展示
WrapAlignment.spaceAround//每一行（列）子Widget在纵（横）轴上的排列，两两子widget之间间距相等，最上最下子widget离边的距离为两两子widget之间距离的一半
WrapAlignment.spaceAround//每一行（列）子Widget在纵（横）轴上的排列，两两子widget之间间距相等，最上最下子widget离边的距离为两两子widget之间距离相等
this.runSpacing = 0.0,//在direction: Axis.horizontal的时候指上下两个Widget的间距,在direction: Axis.vertical的时候指左右两个widget的间距
this.crossAxisAlignment = WrapCrossAlignment.start,//水平排列时控制全部子widgets的上部对齐，垂直排列时控制全部子widgets的左边对齐
WrapCrossAlignment.end//水平排列时控制全部子widgets的下部对齐，垂直排列时控制全部子widgets的又边对齐
WrapCrossAlignment.center//设置每一行的子Widgets剧中对齐
this.textDirection,//设置每一行（列）的展示
textDirection: TextDirection.ltr//设置每一行（列）的子Widgets从左到右（从上到下）正常显示，正序排列
textDirection: TextDirection.rtl////设置每一行（列）的子Widgets倒序显示
this.verticalDirection = VerticalDirection.down,//设置行列widgets的展示，正常显示
VerticalDirection.up//倒序展示，比如，在direction: Axis.horizontal时有1、2、3行widgets，设置为up后，展示为3、2、1
List<Widget> children = const <Widget>[],//一组子widgets
*/

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Wrap(
//        direction: Axis.vertical,//垂直布局  默认水平布局
        spacing: 10,
        //主轴间距
        runSpacing: 10,
        //run 主轴垂直方向的间距
        alignment: WrapAlignment.start,
        // 主轴对齐方式   起始位置对齐
        runAlignment: WrapAlignment.spaceAround,
        //run 可以理解为新的行或列，如果是水平方向布局，run可以理解为新的一行
        textDirection: TextDirection.ltr,
        //文本的对齐方式
        children: <Widget>[
          MyRaisedButton('第1季'),
          MyRaisedButton('第2季报表'),
          MyRaisedButton('第3季轻松打的'),
          MyRaisedButton('第4季对对对'),
          MyRaisedButton('第5季大概率点多'),
          MyRaisedButton('第6季欣赏'),
          MyRaisedButton('第7季版本'),
          MyRaisedButton('第8季'),
          MyRaisedButton('第9季订单'),
          MyRaisedButton('第10季'),
          MyRaisedButton('第11季'),
        ],
      ),
    );
  }
}

class MyRaisedButton extends StatelessWidget {
  final String text;

  const MyRaisedButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
//      textColor: Theme.of(context).accentColor,
      textColor: Colors.black,
      color: Colors.cyan,
      onPressed: () {},
    );
  }
}
