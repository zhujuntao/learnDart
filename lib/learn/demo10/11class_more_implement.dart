/*
*
* dart 中一个类实现多个接口
*
*
* */

abstract class A {
  String name;

  printA();
}

abstract class B {
  printB();
}

class C implements A, B {
  @override
  String name;

  @override
  printA() {
    print('print A');
  }

  @override
  printB() {}
}

void main() {
  C c = new C();
  c.printA();
}
