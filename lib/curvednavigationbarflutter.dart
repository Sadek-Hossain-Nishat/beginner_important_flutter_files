import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/a.dart';
import 'package:myfirstflutterapp/b.dart';
import 'package:myfirstflutterapp/c.dart';
import 'package:myfirstflutterapp/d.dart';
import 'package:myfirstflutterapp/e.dart';

void main(List<String> args) {
  runApp(BottomNavBarFlutter());
}

class BottomNavBarFlutter extends StatefulWidget {
  const BottomNavBarFlutter({Key? key}) : super(key: key);

  @override
  _BottomNavBarFlutterState createState() => _BottomNavBarFlutterState();
}

class _BottomNavBarFlutterState extends State<BottomNavBarFlutter> {
  var _page = 0;
  final pages = [A(), B(), C(), D(), E()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('Curved Bottom Nav Bar'),
          centerTitle: true,
        ),
        bottomNavigationBar: CurvedNavigationBar(
            index: 0,
            color: Colors.white,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.blue,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (value) {
              setState(() {
                _page = value;
              });
            },
            items: [
              Icon(Icons.access_alarm),
              Icon(Icons.ac_unit),
              Icon(Icons.accessible),
              Icon(Icons.add_call),
              Icon(Icons.favorite),
            ]),
        body: pages[_page],
      )),
    );
  }
}
