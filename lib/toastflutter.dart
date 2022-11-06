import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(List<String> args) {
  runApp(ToastFlutter());
}

class ToastFlutter extends StatelessWidget {
  const ToastFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeForToast(),
    );
  }
}

class HomeForToast extends StatefulWidget {
  const HomeForToast({Key? key}) : super(key: key);

  @override
  _HomeForToastState createState() => _HomeForToastState();
}

class _HomeForToastState extends State<HomeForToast> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Toast'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: 'Easy Explanation',
                  toastLength: Toast.LENGTH_LONG,
                  backgroundColor: Colors.purple,
                  textColor: Colors.white,
                  gravity: ToastGravity.BOTTOM);
            },
            child: Text('Click me')),
      ),
    ));
  }
}
