import 'Person.dart';
import 'package:flutterapp/data/Animal.dart';

/*
*面相对象编程（oop）的三个基本特征是：封装、继承、多态、
*
*   封装：封装是对象和类观念的主要特性。封装，把客观事物封装成抽象的类，并且把自己的部分属性和方法提供给其他对象
*   继承：面向对象编程语言的一个主要功能就是"继承"，继承是指这样一种能力，它可以使用现有类的功能，并在
*   多态：允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果。
*
*dart所以的东西都是对象，所有的对象都继承自object类
*
* dart是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是object的子类
* 一个类通常有属性和方法组成
*
* Dart 中与其他面向对象不一样，没有public ，private，protected这些访问修饰符号，但是我们可以使用_把一个方法定义为私有。
*
*
*
*
* */

/*class Rect {
  num height;
  num width;

  Rect(this.height, this.width);

  area() {
    return this.height * this.width;
  }
}*/
/*class Rect {
  num height;
  num width;
  
  Rect(this.height, this.width);

  get area {
    return this.height * this.width;
  }

  set areaHeight(value) {
    this.height = value;
  }
}*/

class Rect {
  num height;
  num width;

  //初始化列表
  Rect()
      : height = 2,
        width = 5 {
    print('${this.height}--${this.width}');
  }

  get area {
    return this.height * this.width;
  }
}

/*class Person {
  String name = '张三';
  int age = 23;

  void getInfo() {
    print('$name---$age');
    print(this.name + "----" + '${this.age}');
  }

  void setInfo(int age) {
    this.age = age;
  }
}*/

/*class Person {
  String name = '张三';
  int age = 23;

  Person(String name, int age) {
    //print('这是默认构造函数，在类实例化时执行');
    this.name = name;
    this.age = age;
  }

  void getInfo() {
    //print('$name---$age');
    print(this.name + "----" + '${this.age}');
  }
}*/
/*class Person {
  String name = '张三';
  int age = 23;

  //默认构造函数的简写
  Person(this.name, this.age);

  void getInfo() {
    //print('$name---$age');
    print(this.name + "----" + '${this.age}');
  }
}*/

/*
class Person {
  String name = '张三';
  int age = 23;

  //默认构造函数的简写
  Person(this.name, this.age);

  Person.now() {
    print('我是一个命名构造函数');
  }

  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void getInfo() {
    //print('$name---$age');
//    print('${this.name}' + "----" + '${this.age}');
  }

  void printInfo() {
    print("${this.name}-----${this.age}");
  }
}
*/

void main() {
  Rect r = new Rect();
  print(r.area);

//  Rect r = new Rect(10, 4);
//  print('面积：${r.area()}');
//  print('面积：${r.area}'); //通过访问属性的方式调用
//
//  r.areaHeight = 6;
//  print('面积：${r.area}'); //通过访问属性的方式调用

  /* List list=new List();
  list.isEmpty;
  list.add('香蕉');
  list.add('香蕉1');

  Map map=new Map();
  map['name']='张三';
  map['age']=22;
  map.addAll({'sex':'男'});
  map.isEmpty;
*/

  /* var p1 = new Person();

  print(p1.name);

  p1.getInfo();*/

  /* Person person = new Person();
  person.setInfo(28);
  person.getInfo();
  print(person.name);*/

  /*Person p = new Person('张三', 20);
  p.getInfo();
  Person p2 = new Person('历史', 26);
  p2.getInfo();*/

//  var d=new DateTime.now();//实例化DateTime 调用它的命名构造函数
//  print(d);
//  Person p = new Person.now(); //调用它的命名构造函数
/*  Person p = new Person.setInfo('李四', 30); //调用它的命名构造函数
  p.printInfo();
  p.getInfo();*/
  /*Animal animal = new Animal('小狗', 1);
  print(animal.age);
  print(animal.getName());
  animal.exeeRun();//间接调用私有方法*/
}
