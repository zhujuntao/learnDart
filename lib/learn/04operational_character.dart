/*
* 运算符
*
* 算术运算符
*
*  + - *  /   ~/(取整)  % （取余）
*
* 关系运算符
*
*  ==  ！=  >  <  >=   <=
*
*
* 逻辑运算符
*
* ！ &&  ||
*
* 赋值运算符
*
* 基础赋值运算符  =   ？？=
*
* 符合赋值运算符  +=  -=  *=  /= %= ~/=
*
*
* */

void main() {
  var a = 13;
  var b = 5;

  print(a + b); //
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(a ~/ b); // a/b 相除之后取整

  var c = a * b;
  print('-----------');
  print(c);

  print(a == b); //判读是否相等
  print(a != b); //判读是否不等
  print(a > b); //判读谁大
  print(a < b);
  print(a >= b); //判读是否大于或等于
  print(a <= b);

//  取反
  bool flag = false;
  print(!flag);

  bool aa = false;
  bool bb = true;
  print(aa && bb); //全部为true 时才为true  ，否则为false
  print(aa || bb); //全部为false 时才为false  ，否则为true

  //如果age是20 性别是女就打印这个人

  int age = 30;
  String sex = '女';
  if (age == 20 && sex == '女') {
    print('$age=======$sex');
  } else {
    print('不打印');
  }

  //赋值运算  =     ??=

  int c1;
  c1 ??= 23; //如果c1为空，把23赋值给c1
  print(c1);

  // += -= /=  *= %= ~/=

  var c2 = 2;
  c2 += 10; //c2=c2+10

  c2 *= 3; //c2=c2*3
  print(c2);

  var sex1 = '男';
  switch (sex1) {
    case "男":
      print("男");
      break;
    case "女":
      print("女");
      break;
  }

//三目运算符  ??
  bool flag1 = true;
  String string1 = flag1 ? '我是true' : '我是false';

  print(string1);

  var aaaa;
  var bbbb1 = aaaa ?? 10; // 如果a为空 把10赋值给b, 如果a不为空，则把a赋值为b
  print(bbbb1);

  //number 与string 之间的转换
  String str22 = '123';
  var num1 = int.parse(str22); //浮点型 用double
  print(num1);

  String price = "";
  try {
    var num1 = double.parse(price); //浮点型 用double
    print(num1);
  } catch (err) {
    print(0);
  }

  var charnum = 12;
  var schar = charnum.toString();

  print(schar is String);

//  isEmpty  判断是否为空

  if (schar.isEmpty) {
    print('为空');
  }
  if (charnum == null) {
    print('为空');
  } else {
    print('不为空');
  }
  var nannum = 0 / 0;
  print(nannum);
  if (nannum.isNaN) {
    print('是');
  }

//  ++    — -

/*
* 自增  自减 1
*
* 在赋值运算中  如果++ -- 写在前，先运算后赋值，如果++ -- 写在后，先赋值后运算
*
*
*
* */

  var  ac=10;

  ac++;

  print(ac);

  ac--;
  print(ac);


  /*var an=10;
  var bn=an++;

  print(an);//11
  print(bn);//10   先赋值  后自增*/

  var an=10;
  var bn=++an;

  print(an);//11
  print(bn);//11  后赋值  先运算



}
