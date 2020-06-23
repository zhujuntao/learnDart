/*
* Dart 中抽象类：dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口。
*
* 1、抽象类通过abstract 关键字来定义
* 2、dart中的抽象方法不能用abstract声明，dart中没有方法体的方法我们称为抽象方法。
* 3、如果子类继承抽象类必须得实现里面的抽象方法
* 4、如果把抽象类当做接口实现的话必须都实现抽象类里面定义的所有属性和方法。
* 5、抽象类不能被实例化，只有继承它的子类可以
*
* extends和implements的区别：
*
* 1、如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用extends继承抽象类。
* 2、如果只是把抽象类当做标准的话，我们就用implements实现抽象类
*
*
* */

//案例：定义一个animal 类要求它的子类必须包含eat方法

abstract class Animal {
  eat(); //抽象方法
  run(); //抽象方法
  printInfo() {
    print('我是抽象类中的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗吃骨头');
  }

  @override
  run() {
    print('小狗在跑');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫吃鱼');
  }

  @override
  run() {
    print('小猫在跑');
  }
}

void main() {
  Dog d = new Dog();
  d.eat();
  d.printInfo();
  Cat c = new Cat();
  c.run();
  c.printInfo();

  // Animal animal=new Animal(); 抽象方法不能被实例化
}
