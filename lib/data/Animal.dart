class Animal {
  String _name; //私有属性
  int age = 23;

  //默认构造函数的简写
  Animal(this._name, this.age);

  Animal.now() {
    print('我是一个命名构造函数');
  }

  Animal.setInfo(String name, int age) {
    this._name = name;
    this.age = age;
  }

  void getInfo() {
    //print('$name---$age');
//    print('${this.name}' + "----" + '${this.age}');
  }

  void printInfo() {
    print("${this._name}-----${this.age}");
  }

  String getName() {
    return this._name;
  }
  void _run(){
    print('这是一个私有方法');
  }
  exeeRun(){
    this._run();//类中方法之间的相互调用
  }
}
