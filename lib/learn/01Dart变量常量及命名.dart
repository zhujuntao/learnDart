
/*
* Dart 命名规范
*
*  1.变量名称必须有数字、字母、下划线、和美元符（$）组成。
*
*  2.注意：标识符开头不能是数字。
*
*  3.标识符不能是保留字和关键字。
*
*  4.变量的名字是区分大小写的 如： age 和Age 是不同的变量
*
*  5.标识符（变量名） 一定要见名思议 ：变量名称建议用名词，方法名称建议用动词。
*
*
* */





/*
//main(){
//  print('您好 Dart');
//}
*/

//表示main方法没有返回值
void main(){

//  print('您好 Dart');
 /* var str='您好 Dart';
  var num=1234;

  print(num);
  print(str);
*/

 /*
 * Dart 是一个强大的脚本语言， 可以不预先定义变量类型，自动会类型推倒，
 *
 * dart中可以通过var关键字   可以通过类型关键字申明变量
 * dart 中有类型校验
 *
 * */


// 字符串
  String str='您好 Dart';

  print(str);

// 数字类型

  int num=1234;
  print(num);


  /*var name='';
  name=1234;
  print(name);//类型不一致报错*/

  String str="1223";
  print(str);


  var str1='11111';

  var 2str='1222';//错误

  var if='ddddd';//错误

  var age=20;

  var Age=30;

  print(age);
  print(Age);


  /*
  * Dart 常量
  *
  *  const 值不变，一开始就得赋值；
  *
  *  final 可以开始不赋值 ，只能赋值一次， 而final不仅有const的编译时常量的特性，最重要的它是运行时
  * 永远不改变的量，请使用final或const来修饰。
  *
  *
  *
  * */

  //变量
  var str='this is a str ';

  str='你还 str';

  print(str);

  int age=112;

  age=22;

  print(age);
  //常量
  const pi=3.14159;
  //pi=12223;//错误的写法
  print(pi);

  final pi=3.14159;
  //pi=12223;//错误的写法

  print(pi);

  final a=new DateTime.now();

  print(a);

  //const a=new DateTime.now();//会报错





}


