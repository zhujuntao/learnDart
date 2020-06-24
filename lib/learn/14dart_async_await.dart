/*
* async 和await
*
* 1、只有async方法才可以使用和await关键字调用方法
* 2、如果调用别的async方法要使用await关键字
*
* 注：
* async 是让方法变成异步
* await 是等待异步方法的执行完成。
*
* */

void main() async {
  var result = await testAsync();
  print(result);
}

//异步方法
testAsync() async {
  return 'hello async';
}
