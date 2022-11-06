import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myfirstflutterapp/second.dart';

void main(List<String> args) {
  runApp(HeroWidgetApp());
}

class HeroWidgetApp extends StatelessWidget {
  const HeroWidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Hero Widget'),
              centerTitle: true,
            ),
            body: Center(
              child: CircleAvatar(
                  radius: 50,
                  child: GestureDetector(
                    child: Hero(
                      tag: 'add',
                      child: Icon(Icons.add_a_photo, size: 50),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Second()));
                    },
                  )),
            )));
  }
}
