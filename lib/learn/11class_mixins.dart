/*
* mixins 的中文意思是混入，就是在类中混入其他功能
*
* 在dart中可以使用mixins实现类似多继承的功能
*
* 因为mixins使用的条件，随着dart版本一直在变，dart2.x中使用mixins的条件
*
* 1、作为mixins的类只能继承自object，不能继承其他类
* 2、作为mixins的类不能有构造函数
* 3、一个类可以mixins多个mixins类
* 4、mixins绝不是继承，也不是接口，而是一种全新的特性
*
* 注意：1.当继承的类，或者 mixins 的类有相同方法时，后面的类中的方法会吧前面类中相同的方法替换掉
*
*
*      2.mixins的实例类型是其超类的子类型。
*
*
*
*
* */
class Person {
  String name;
  num age;

  Person(this.name, this.age);

  printInfo() {
    print('这是一个Person类');
    print('${this.name}---${this.age}');
  }
}

//不能继承其他类
class A /*extends Person*/ {
  String info = 'this is a ';

  printA() {
    print('print a');
  }

  run() {
    print('print a 里面 run  ');
  }
}

class B {
//  B(){} //不能有构造函数
  printB() {
    print('print B');
  }

  run() {
    print('print B 里面 run  ');
  }
}

class C extends Person with A, B {
  C(String name, num age) : super(name, age);
}

void main() {
  C c = new C('张三', 20);
  /* c.printA();
  c.printB();
  print(c.info);
  c.printInfo();

  c.run(); //当继承的类，或者 mixins 的类有相同方法时，后面的类中的方法会吧前面类中相同的方法替换掉
  */
  print(c is A); // true
  print(c is B); // true
  print(c is C); // true
}
