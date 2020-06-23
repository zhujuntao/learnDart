import 'Db.dart';

class Mssql implements Db {

  @override
  add(String data) {
    print('这是Mssql的add方法'+data);
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
}
