import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/four.dart';
import 'package:myfirstflutterapp/one.dart';
import 'package:myfirstflutterapp/three.dart';
import 'package:myfirstflutterapp/two.dart';

void main(List<String> args) {
  runApp(BottomNavigationWidget());
}

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentindex = 0;
  final pages = [One(), Two(), Three(), Four()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation Bar'), centerTitle: true),

      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.message),
              label: 'Message'),

          BottomNavigationBarItem(
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.call),
              label: 'Call'),

          BottomNavigationBarItem(
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.pan_tool),
              label: 'pan tool'),

          BottomNavigationBarItem(
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.radio),
              label: 'Radio'),
        ],
        onTap: (value) {
          setState(() {
            _currentindex = value;
          });
        },
      ),

      body: pages[_currentindex],
    ));
  }
}
