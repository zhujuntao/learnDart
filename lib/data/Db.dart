abstract class Db {
  //接口就是：约定，规范
  String uri; //数据库连接地址
  add(String data); //抽象方法
  save();

  delete();
}