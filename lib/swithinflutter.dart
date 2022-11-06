import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(SwithinFlutter());
}

class SwithinFlutter extends StatelessWidget {
  const SwithinFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageforSwitch(),
    );
  }
}

class HomePageforSwitch extends StatefulWidget {
  const HomePageforSwitch({Key? key}) : super(key: key);

  @override
  _HomePageforSwitchState createState() => _HomePageforSwitchState();
}

class _HomePageforSwitchState extends State<HomePageforSwitch> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: _value == false ? Colors.red : Colors.green,
          appBar: AppBar(
            title: Text('Switch in Flutter'),
            centerTitle: true,
          ),
          body: Center(
              child: Switch(
                  value: _value,
                  onChanged: (val) {
                    setState(() {
                      _value = val as bool;
                      print(_value);
                    });
                  }))),
    );
  }
}
