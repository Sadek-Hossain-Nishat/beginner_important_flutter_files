import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MediaqueryApp());
}

class MediaqueryApp extends StatelessWidget {
  const MediaqueryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text("Media Query App"),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Container(
              height: 200,
              width: 300,
              color: Colors.green,
              child: Center(
                  child: Text("Hi Flutter Media QUery",
                      style: TextStyle(
                          fontSize: 23, fontWeight: FontWeight.w200))),
            ),
          ),
        ),
      )),
    );
  }
}
