/*
* 泛型就是解决，类 接口 方法的复用性，以及对不特定数据的支持（类型校验）
*
*
* */
//只返回string数据类型

/*String getData(String value){
  return value;
}

int getData2(int num){
  return num;
}*/
//同事返回 string  int    不指定类型

/*getData(value){
  return value;
}*/

//不指定类型放弃了类型检查，我们实现传入什么 返回什么。比如传入number 返回Number

/*T getData<T>(T value) {
  return value;
}*/
//不校验返回类型
/*getData<T>(T value) {
  return value;
}*/

//把下面的类转换成泛型类，要求list里面既可以增加int类型，也可以增加string类型

/*class PrintClass {
  List list = new List<int>();

  void add(int value) {
    this.list.add(value);
  }

  void printInfo() {
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}*/

class PrintClass<T> {
  List list = new List<T>();

  void add(T value) {
    this.list.add(value);
  }

  void printInfo() {
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}


void main() {

 /* PrintClass p=new PrintClass<String>();
  p.add('xxx');
  p.add('您好');
  p.printInfo();

  PrintClass p1=new PrintClass<int>();
  p1.add(22);
  p1.add(33);
  p1.printInfo();*/


/*  PrintClass p=new PrintClass();
  p.add(12);
  p.add('xxx');
  p.add(35);
  p.printInfo();*/




  /*var p = new PrintClass();
  p.add(1);
  p.add(2);
  p.add(3);
  p.printInfo();*/


//  print(getData(21));
//  print(getData('xxxx'));

//  print(getData<String>('您好'));
//  print(getData<int>(12));

  /* List list = new List();
  list.add(12);
  list.add('您好');
  print(list);*/

  /*List list = new List<String>();

  //list.add(12);//错误写法
  list.add('您好');

  print(list);*/
}
