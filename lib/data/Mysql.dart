import 'Db.dart';

class Mysql implements Db {
  Mysql(this.uri);

  @override
  add(String data) {
    print('这是Mysql的add方法'+data);
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  save() {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  String uri;

  remove(){

  }
}
