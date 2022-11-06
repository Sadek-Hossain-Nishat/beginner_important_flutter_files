import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(DropDownButtonFlutter());
}

class DropDownButtonFlutter extends StatefulWidget {
  const DropDownButtonFlutter({Key? key}) : super(key: key);

  @override
  _DropDownButtonFlutterState createState() => _DropDownButtonFlutterState();
}

class _DropDownButtonFlutterState extends State<DropDownButtonFlutter> {
  var selected = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('Drop Down Button'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                selected,
                style: TextStyle(fontSize: 23, color: Colors.green),
              ),
              DropdownButton(
                  iconSize: 40,
                  items: [
                    DropdownMenuItem(
                      child: Text('One'),
                      value: 'one',
                    ),
                    DropdownMenuItem(
                      child: Text('Two'),
                      value: 'two',
                    ),
                    DropdownMenuItem(
                      child: Text('Three'),
                      value: 'three',
                    ),
                    DropdownMenuItem(
                      child: Text('Four'),
                      value: 'four',
                    ),
                  ],
                  onChanged: (val) {
                    setState(() {
                      selected = val as String;
                    });
                  })
            ],
          ),
        ),
      )),
    );
  }
}
