var a = 123; //全局变量

void main() {
  /*
  *
  * 闭包：
  * 1.全局变量特点：全局变量常驻内存、全局变量污染全局
  * 2.局部变量的特点：不常驻内存会被垃圾机制回收，不会污染全局
  *
  *
  * 想实现功能
  * 1.常驻内存
  * 2.不污染全局
  *  产生了闭包，可以解决这个问题
  *
  *闭包：函数嵌套函数，内部函数会调用外部函数的变量或参数，变量或参数不会被系统回收
  *
  *写法：函数嵌套函数，并return里面的函数，这样就形成了闭包。
  *
  * */

  /*print(a);
  fn() {
    a++;
    print(a);
  }
  fn();*/
  /*printInfo() {
    //局部变量
    var b = 123;
    b++;
    print(b);
  }*/

  fn() {
    var a = 123;
    return () {
      a++;
      print(a);
    };
  }

  var b = fn();
  b();
  b();
  b();

  /*
  *
  * 使用forEach打印下面的list里面的数据
  *
  * */

//  List list = ['苹果', '香蕉', '西瓜'];

  /*list.forEach((element) {
    print(element);
  });*/

  /*list.forEach((element) => print(element)); //箭头函数
  list.forEach((element) => {print(element)});*/

  /*
  *
  * 修改下面list中的数据，让数组中大于2的值乘以2
  * 
  * */

//  List list = [4, 1, 2, 3, 4];
  /* var newList = list.map((e) {
    if (e > 2) {
      return e * 2;
    }
    return e;
  });
*/
  /* var newList=list.map((e) => e>2?e*2:e);
  print(newList.toList());*/

  /*
 *
 * 需求：
 * 1.定义一个方法来判断一个数是否是偶数
 * 2.定义个方法打印1到n 以内的偶数
 *
 * */

  /* bool isEventNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

  printNum(int n) {
    for (var i = 1; i <= n; i++) {
      if (isEventNumber(i)) {
        print(i);
      }
    }
  }

  printNum(10);*/
  //匿名方法
  /* var printNum = (int n) {
    print(n+2);
  };
  printNum(2);*/

  //自执行方法

  /* ((int n) {
    print(n);
    print('我是自执行方法');
  })(13);*/

  //方法的递归

  /* var sum = 1;
  fn(int n) {
    sum *= n;
    if (n == 1) {
      return;
    }
    fn(n - 1);
  }

  fn(5);
  print(sum);*/

  //通过递归 求1到100的和

  /* var sum = 0;
  fn(int n) {
    sum += n;
    if (n == 0) {
      return;
    }

    fn(n - 1);
  }
  fn(100);
  print(sum);*/
}
