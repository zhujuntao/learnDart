/*
* dart 中的静态成员
* 1.使用static 关键字来实现类级别的变量和函数
* 2.静态方法不能访问非静态成员，非静态方法可以访问静态成员
* */

/*
*
* dart 中的对象操作符
*
*  ?   条件运算符
*  as  类型转换
*  is  类型判断
*  ..  级联操作（连缀）
* */

/*
*
* 面向对象的三大特征：封装，继承，多态
* dart中的继承：
*
* 1.子类使用extends关键字来继承父类
* 2.子类会继承父类里面的可见的属性和方法，但是不会继承构造函数
* 3.子类能复写父类的方法，getter和setter
*
* */

/*class Person {
  String name = '张三';
  int age = 23;

  //默认构造函数的简写
  Person(this.name, this.age);

  Person.sss(this.name, this.age);

  void printInfo() {
    print(this.name + "----" + '${this.age}');
  }
}

class Web extends Person {
  String sex;

  Web(String name, int age, String sex) : super.sss(name, age) {
    this.sex = sex;
  }

  run() {
    print(this.name + "--${this.sex}--" + '${this.age}');
  }
}*/
class Person {
  String name = '张三';
  int age = 23;

  //默认构造函数的简写
  Person(this.name, this.age);

  void printInfo() {
    print(this.name + "----" + '${this.age}');
  }

  work() {
    print(this.name + "在工作。。。");
  }
}

class Web extends Person {
  String sex;

  Web(String name, int age, String sex) : super(name, age) {
    this.sex = sex;
  }

  run() {
    //通过super关键字调用父类的方法
    super.work();
    //通过this来调用父类属性

    print(this.name + "--${this.sex}--" + '${this.age}');
  }

//  覆写父类的方法
  @override
  void printInfo() {
    print('姓名：' + this.name + "----" + '年龄：' + '${this.age}');
  }

  @override
  void work() {
    print(this.name + "在工作写代码");
  }
}

/*class Person {
  String name = '张三';
  int age = 23;

  //默认构造函数的简写
  Person(this.name, this.age);

  void printInfo() {
    //print('$name---$age');
    print(this.name + "----" + '${this.age}');
  }
}*/

/*class Person {
  static String name = '张三';

  static void show() {
    print(name);
  }
}*/

/*
class Person {
  static String name = '张三';
  int age = 20;

  static void show() {
    print(name);
  }

  void printInfo() {
    //非静态方法可以访问，静态成员以及非静态成员
    print(name); //访问静态属性
    print(this.age); //访问非静态属性
    show(); //调用静态方法
  }
  static void printUserInfo(){
    print(name); //访问静态属性
    show(); //调用静态方法
//    print(age);//静态方法没法访问非静态属性和方法
  }
}
*/

void main() {
  /*Person p = new Person();
  p.show();*/

  /* print(Person.name);
  Person.show();*/

  /* Person p = new Person();
  p.printInfo();*/

  /*Person p;
 p?.printInfo();//判断p是否为空，为空就不在调用方法
*/
  /*Person p = new Person('张三', 20);
  p?.printInfo();*/

  /* Person p = new Person('张三', 20);

  if(p is Person){
    p.name='历史';
  }
  p.printInfo();
  print(p is Object);*/

  /*var p1;
  p1 = '';
  p1 = new Person('张三', 20);
  //p1.printInfo();
  (p1 as Person).printInfo();*/

  /*Person p = new Person('张三1', 20);

//  p.name='李四';
//  p.age=40;
//  p.printInfo();

  p
    ..name = '王二'
    ..age = 30
    ..printInfo();*/

/*//  Web w = new Web('维生素', 20);
  Web w = new Web('维生素', 20, '男');
  print(w.name);
  w.run();
//  w.printInfo();*/

  Web w = new Web('维生素', 20, '男');

  w.printInfo();
}
