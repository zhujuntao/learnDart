/*
*
* 映射（map）是无序的键值对
*
* 常用属性
* keys     获取所有的key值
* values   获取所有的value值
* isEmpty     是否为空
* isNotEmpty  是否不为空
*
*常用方法
* remove（key）    删除指定key的数据
* addall （{'''}） 合并映射  给映射内增加属性
* containsValue    查看映射内的值  返回true或false
*  forEach
*  Map
*  where
*  any
*  every
*
*
* */

void main(){
/*
  var person={
    'name':'张三',
     'age':22
  };

  var m=new Map();
  m['name']='李四';
  print(person);
  print(m);
*/
//常用属性
 /* var person={
    'name':'张三',
    'age':22,
    'sex':'男'
  };
  print(person.isNotEmpty);
  print(person.isEmpty);
  print(person.keys);
  print(person.keys.toList());
  print(person.values);
  print(person.values.toList());*/

//常用方法
  Map person={
    'name':'张三',
    'age':22,
    'sex':'男'
  };
//  person.addAll({
//   'work':["敲代码",'送外卖'],
//    'height':180
//
//  });
  person.remove('sex');
  print(person);
  print(person.containsValue('张三'));

}