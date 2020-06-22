/*
*
* 内置方法、函数
*
* print（）;
*
* 自定义方法：
*
* 格式：
*    返回类型  方法名称 （参数1，参数2，....){
*    方法体
*    return 返回值；
*
* }
*
*
*
* */

/*
void printInfo() {
  print('我是自定义方法');
}

int getNum() {
  var myNum = 123;
  return myNum;
}

String printUserInfo() {
  return 'this is str';
}

List getList() {
  return ['111', '222', '3333'];
}
*/

//定义一个方法

//求 1到这个数的所有数的和

/*
int sumNum(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}
*/

//打印用户信息

//String printUserInfo(String username,int age){//形参
//  return '姓名：$username-- 年龄：$age';
//}

void main() {
//  print('系统内置方法');
//  printInfo();

  /* var n = getNum();

  print(n);*/

//  print(printUserInfo());
//  print(getList());

  // 演示方法作用域
/*  xxx() {
    //局部方法，只能在本方法中使用  ,但是可以再局部方法中调用全局方法
    int aaa() {
      //调用全局方法
      print(getList());
      print('aaaa');
    }

    aaa();
  }

  xxx();*/

  /* var n = sumNum(60);
  print(n);*/

// printUserInfo('张三', 20);//实参

//  可选参数

  /* String printUserInfo(String username,[int age]){//形参
    if(age!=null){
      return '姓名：$username-- 年龄：$age';
    }
    return '姓名：$username-- 年龄保密';
  }
 print(printUserInfo("张三",21)) ;
 print(printUserInfo("张三")) ;
*/

//带默认参数的方法
  /*String printUserInfo(String username, [String sex = '男', int age]) {
    //形参
    if (age != null) {
      return '姓名：$username--性别:$sex-- 年龄：$age';
    }
    return '姓名：$username---性别:$sex- 年龄保密';
  }

  print(printUserInfo('张三', '女', 22));
  print(printUserInfo('张三'));*/

  //命名参数的方法

  /*String printUserInfo(String username, {int age, String sex = '男'}) {
    //形参
    if (age != null) {
      return '姓名：$username--性别:$sex-- 年龄：$age';
    }
    return '姓名：$username---性别:$sex- 年龄保密';
  }

  print(printUserInfo('张三', age: 20, sex: '女'));
  print(printUserInfo('历理', age: 25));*/


//  定义一个 把方法当做参数的方法
   /*fn1(){
     print('fn1');

   }
   fn2(fn){
     fn();
   }
   //调用fn2方法，把fn1当做参数传入
   fn2(fn1);
*/

  /* var fn=(){
     print('我是一个匿名方法');
   };

    fn();*/

}



