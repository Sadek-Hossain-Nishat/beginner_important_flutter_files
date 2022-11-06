// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(List<String> args) {
  runApp(DatePickerFlutter());
}

class DatePickerFlutter extends StatelessWidget {
  const DatePickerFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeforDatePicker());
  }
}

class HomeforDatePicker extends StatefulWidget {
  const HomeforDatePicker({Key? key}) : super(key: key);

  @override
  _HomeforDatePickerState createState() => _HomeforDatePickerState();
}

class _HomeforDatePickerState extends State<HomeforDatePicker> {
  DateTime? _dateTime = null;
  TimeOfDay? _timeOfDay = null;

  getTime() async {
    TimeOfDay? timeOfDay =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    setState(() {
      _timeOfDay = timeOfDay;
    });
  }

  getDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 20));

    setState(() {
      _dateTime = date!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Date and Time Picker'),
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _dateTime == null
                      ? Text("Choose Date")
                      : Text(DateFormat.yMMMEd().format(_dateTime!)),
                  _timeOfDay == null
                      ? Text('Choose Time')
                      : Text('${_timeOfDay!.hour}:${_timeOfDay!.minute}'),
                  ElevatedButton(
                      onPressed: () {
                        getDate();
                      },
                      child: Text('Show Date')),
                  ElevatedButton(
                      onPressed: () {
                        getTime();
                      },
                      child: Text('Show Time'))
                ],
              ),
            )));
  }
}
