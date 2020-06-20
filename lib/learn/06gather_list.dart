/*
*
* list  里面常用方法
*
* 常用属性
* length  长度
*
* reversed    翻转
* isEmpty     是否为空
* isNotEmpty  是否不为空
*
*常用方法
*  add        增加
*  addall     拼接数组
*  indexof    查找
*  remove     删除
*  removeat   删除
*  fillRange  修改
*  insert (index ,value) 指定位置插入
*  insertall (index ,list)
*
*  tolist     其他类型转换成list
*
*  join       list转换成字符串
*  split      字符串转换成list
*  forEach
*  Map
*  where
*  any
*
*
*
* set
* 主要功能就是去除数组中重复内容
*
* set 是没有顺序且不能重复的集合，所以不能通过索引去获取值
*
*
*
* */

void main() {
  /* var mylist=['香蕉','苹果','橘子'];
  print(mylist[1]);
*/
  /* var mylist=new List();
  mylist.add('1111');
  mylist.add('222');
  print(mylist);*/

//  var mylist = ['香蕉', '苹果', '橘子'];

//  mylist.add('桃子');
//  mylist.addAll(['西瓜', '樱桃']);
//  print(mylist);
//
//  print(mylist.indexOf("苹果"));//查找到返回其索引值，查找不到返回-1
//  mylist.remove('西瓜');
//  mylist.removeAt(2);
//  print(mylist);

  /*print(mylist.length);
  print(mylist.isEmpty);
  print(mylist.isNotEmpty);
  print(mylist.reversed); //翻转 对列表倒序排序

  var newMylist = mylist.reversed.toList();
  print(newMylist);*/
 /* mylist.fillRange(1, 2, '哈密瓜');
  print(mylist);
  mylist.fillRange(1, 3, 'aaa');
  print(mylist);
  mylist.insert(1, "哈密瓜");
  mylist.insertAll(1, ["哈密瓜",'hhh']);

  print(mylist);*/

 /* var str=mylist.join(',');
  print(str);
  print(str is String);*/

/* var str='香蕉,苹果,橘子';
 var list=str.split(',');

 print(list);*/

/*
var s=new Set();
 s.add('香蕉');
 s.add('苹果');
 s.add('香蕉');

 print(s);
 print(s.toList());
*/
  var mylist = ['香蕉', '苹果', '橘子','香蕉', '苹果','香蕉', '苹果'];
   print(mylist);
  var s=new Set();
  s.addAll(mylist);
  print(s);
  print(s.toList());


}
