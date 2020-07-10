import 'package:flutter/material.dart';

//import 'package:date_format/date_format.dart' as DateFormatTest;
import 'package:date_format/date_format.dart';

class DatePickerTestDemo extends StatefulWidget {
  @override
  _DatePickerTestDemoState createState() => _DatePickerTestDemoState();
}

class _DatePickerTestDemoState extends State<DatePickerTestDemo> {
  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 20);

  //http://bbs.itying.com/topic/5cfb2a12f322340b2c90e764
  //flutter showDatePicker显示中文日期_Flutter时间控件显示中文

  void _showDatePicker() async {
    //第一种
    /* showDatePicker(
            context: context,
            initialDate: _nowDate,
            firstDate: DateTime(1980),
            lastDate: DateTime(2100))
        .then((value) => print(value));*/
    //第2种
    var result = await showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
      //locale: Locale('zh'),
    );
    if (result == null) return;
    print(result);

    setState(() {
      this._nowDate = result;
    });
  }

  void _showTimePicker() async {
    var result = await showTimePicker(context: context, initialTime: _nowTime);

    print(result);

    setState(() {
      this._nowTime = result;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /* 
     var now = DateTime.now();
    print(now); //2020-07-10 09:46:43.624706
    print(now.millisecondsSinceEpoch); //时间戳  1594345832585
    print(DateTime.fromMillisecondsSinceEpoch(1594345832585));

    print(formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]));
    print(formatDate(DateTime.now(), [yyyy, '/', mm, '/', dd]));
    print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期组件'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                /*onTap: () {
              print('打开日期组件');
            },*/
                onTap: _showDatePicker,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('日期:${formatDate(this._nowDate, [
                      yyyy,
                      '年',
                      mm,
                      '月',
                      dd,
                    ])}'),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 36,
                    )
                  ],
                ),
              ),
              InkWell(
                /*onTap: () {
              print('打开日期组件');
            },*/
                onTap: _showTimePicker,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('时间:${_nowTime.format(context)}'),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 36,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
