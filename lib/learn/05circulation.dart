void main() {
  /*
  * 语法：
  *  while（表达式/循环条件）{}
  *
  *  do{
  *   语句/循环体
  *   }while（表达式/循环条件）；
  *
  *   注意：1、最后分号不要忘记
  *        2、循环条件中使用的变量，需要初始化。
  *        3、循环体中，应有结束循环的条件。否则  会造成死循环。
  *
  * 区别： while 和 do while ，第一次循环不成立的时候，do 中的代码会被执行
  *
  * */

  /*
  * break 语句
  *
  * 1、在switch语句中使流程跳出switch结构。
  * 2、在循环语句中使循环跳出当前循环，遇到break 循环终止，后面的代码不在执行。
  *
  * 强调:
  * 1.如果在循环中已经执行了break语句，就不会执行循环体中位于break后面的语句。
  * 2.在多层循环中一个break只能向外跳出一层
  *
  * break可以用在switch case中也可以用在for循环和while循环中
  *
  * continue语句的功能
  *
  * 【注】只能在循环语句中使用，使本次循环结束，即跳过循环体下面尚未执行的语句，接着进行下一次循环
  *
  * continue可以再for循环以及while循环中。但是不建议在while循环中，不小心容易死循环。
  *
  *
  *
  *
  * */

  //for 循环
//  for(int i=1;i<=10;i++){
//   print('====i===$i');
//  }
//打印0到50的所有偶数

/*for(int i=1;i<=50;i++){
    if(i%2==0){
      print('===$i');
    }
}*/

//求 1到10的和

/*var sum=0;
for(int i=1;i<=100;i++){
    sum+=i;
}
print(sum);*/
//求5的阶乘

  /*var sum = 1;
  for (int i = 1; i <= 5; i++) {
    sum *= i;
  }
  print(sum);*/

  //打印list 中内容

  /*List list=['张三','李四','王二'];

  for(int i=0;i<list.length;i++){
    print(list[i]);
  }
*/
  /* List list = [
    {"title": "信息1"},
    {"title": "信息2"},
    {"title": "信息3"},
  ];

  for(int i=0;i<list.length;i++){
    print(list[i]['title']);
  }*/
//定义一个二维数组，打印里面的内容
  /* List list = [
    {
      "cate": "国内",
      "news": [
        {"title": "国内信息1"},
        {"title": "国内信息2"},
        {"title": "国内信息3"},
      ]
    },
    {
      "cate": "国际",
      "news": [
        {"title": "国际信息1"},
        {"title": "国际信息2"},
        {"title": "国际信息3"},
      ]
    }
  ];

  for (var i = 0; i < list.length; i++) {
    print(list[i]["cate"]);
    print('--------------');
    for (var j = 0; j < list[i]["news"].length; j++) {
      print(list[i]["news"][j]["title"]);
    }
  }*/

  /*int i=1;
  while(i<=10){
    print(i);
    i++;
  }
*/
  //求1到100的和

//  int i = 1;
//  int sum = 0;
/*  while (i <= 100) {
    sum += i;
    i++;
  }
  print(sum);*/

  /* do {
    sum += i;
    i++;
  } while (i <= 100);

  print(sum);

  while (i < 0) {
    print('小于0了');
  }

  do {
    print('小于0');
  } while (i < 0);*/

//打印1到10的数字，跳过4

/*for(var i=1;i<=10;i++){
  if(i==4)
    continue;//跳过当前循环 循环还会继续执行
   //break; 跳出循环
  print(i);

}*/

//break 只能跳出一层循环


  for (var i = 0; i < 5; i++) {
    print('------外层-----$i');
    for (var j = 0; j < 3; j++) {
      if (j == 1) {
        break;
      }
      print('------里层-----$j');
    }
  }
}
