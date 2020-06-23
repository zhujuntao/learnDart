class Person{
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