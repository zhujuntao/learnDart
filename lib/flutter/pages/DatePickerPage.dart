import 'package:flutter/material.dart';

import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';

class DatePickerPage extends StatefulWidget {
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

const String MIN_DATETIME = '2010-05-12';
const String MAX_DATETIME = '2021-11-25';
const String INIT_DATETIME = '2019-05-17';

class _DatePickerPageState extends State<DatePickerPage> {
  bool _showTitle = true;
  DateTime _dateTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    _dateTime=DateTime.parse(INIT_DATETIME);
    _dateTime = DateTime.now();
  }

  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: _dateTime,
      //显示年月日
      //dateFormat: 'yyyy-MMMM-dd',
      //显示年月日 时 分
      dateFormat: 'yy年M月d日    EEE,H时:m分',
      // show TimePicker
      pickerMode: DateTimePickerMode.datetime,

      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        /* setState(() {
          _dateTime = dateTime;
        });*/
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //https://github.com/dylanwuzh/flutter-cupertino-date-picker
      appBar: AppBar(
        title: Text('日期选择组件'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: _showDatePicker,
                child: Row(
                  children: <Widget>[
                    //Text('2020-07-10'),
                    Text('日期:${formatDate(_dateTime, [yyyy, '年', mm, '月', dd,'日  ',HH,':',nn
                    ])}'),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 40,
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
