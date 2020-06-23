/*
* Dart 中多态：
* 1、允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果
* 2、子类的实例赋值给父类的引用
* 3、多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。
* */

//案例：定义一个animal 类要求它的子类必须包含eat方法

abstract class Animal {
  eat(); //抽象方法
//  run(); //抽象方法
/*printInfo() {
    print('我是抽象类中的普通方法');
  }*/
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗吃骨头');
  }

  run() {
    print('小狗在跑');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫吃鱼');
  }

  run() {
    print('小猫在跑');
  }
}

void main() {
//  Dog d = new Dog();
//  d.eat();
//  d.printInfo();
//  Cat c = new Cat();
//  c.run();
//  c.printInfo();

  // Animal animal=new Animal(); 抽象方法不能被实例化

 /* Dog d = new Dog();
  d.eat();
  d.run();*/

  Animal d = new Dog();
  d.eat();
  Animal c = new Cat();
  c.eat();
}
