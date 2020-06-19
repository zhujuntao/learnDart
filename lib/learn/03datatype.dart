/*
*
* Dart  中支持的数据类型
*
* 常用数据类型
*
*     Numbers  (数值)：
*
*     int
*     double
*
*     String （字符串）
*
*     Booleans(布尔)
*     bool
*
*     list （数组）
*           在dart中，数组是列表对象，所以大多数人只是称他们为列表
*
*      Maps (字典)
*
*           通常来说，Map是一个键值对相关的对象，键和值可以是任何类型的对象，每个键 只出一个值
*
* */

void main() {
//  定义字符串类型的方式

  var str = 'this is a str';
  var str2 = "this is a str";
  print(str);
  print(str2);

  String str3 = 'this is a str';
  String str4 = "this is a str";
  print(str3);
  print(str4);

  //可以分段  双引号也可以
  String str5 = ''' this is a str
    
    this is a str
    
    this is a str
     ''';
//    字符串拼接
  String str11 = '您好';
  String str12 = '您好 2';

  print("$str11 $str12");

  print(str11 + str12);
  print(str11 + " " + str12);

  // int

  int a = 123;
  print(a);
  // double
  // 既可以是整型，或者浮点型

  double b = 23.5;
  b = 25;
  print(b);

  // 运算符 : +  -  *  /

  var aa = a + b;
  print(aa);

  // bool 布尔型   true false

  bool flag1 = true;
  bool flag2 = false;

  print(flag1);
  print(flag2);

  var flag = true;
  //条件判断

  if (flag) {
    print('真');
  } else {
    print('假');
  }

  var ac = 123;
  var bc = 333;

  if (ac == bc) {
    print('a=b');
  } else {
    print('a!=b');
  }

//  定义list的方式

  var ll = ['aa', 'vvv', 'bbb'];

  print(ll);
  print(ll.length);

  var l2 = new List();

  l2.add('ffff');
  l2.add('zddd');
  l2.add('ffgg');

  print(l2[1]);

  //定义 知道类型

  var l3 = new List<String>();
  l3.add("11111");
  //l3.add(123);//定义指定类型
  var l5 = List.generate(20, (i) => " sss $i ");

  //定义maps 方式

  var person = {
    "name": "郑州",
    "age": 22,
    "work": ["前台", "送外卖"]
  };

  print(person);
  print(person["name"]);
  print(person["age"]);
  print(person["work"]);

  var p = new Map();
  p["name"] = "李四";
  p["age"] = 22;
  p["work"] = ["前台", "送外卖"];
  print(p);
  print(p["age"]);

// is 关键词判断类型

  var str_1 = '1234';
  if (str_1 is String) {
    print('String 类型');
  } else if (str_1 is int) {
    print('int 类型');
  } else {
    print('其他 类型');
  }
}
