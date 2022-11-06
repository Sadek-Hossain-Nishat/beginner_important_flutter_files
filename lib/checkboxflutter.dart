import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(CheckboxinFlutter());
}

class CheckboxinFlutter extends StatelessWidget {
  const CheckboxinFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageForCheckBox(),
    );
  }
}

class HomePageForCheckBox extends StatefulWidget {
  const HomePageForCheckBox({Key? key}) : super(key: key);

  @override
  _HomePageForCheckBoxState createState() => _HomePageForCheckBoxState();
}

class _HomePageForCheckBoxState extends State<HomePageForCheckBox> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _value == false ? "Unchecked" : "Checked",
              style: TextStyle(
                  fontSize: 50,
                  color: _value == false ? Colors.red : Colors.green),
            ),
            Checkbox(
                value: _value,
                onChanged: (val) {
                  setState(() {
                    _value = val as bool;
                    print(_value);
                  });
                })
          ],
        ),
      ),
    ));
  }
}
