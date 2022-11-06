import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Hero(
          tag: 'add',
          child: Icon(
            Icons.add_a_photo,
            size: 250,
            color: Colors.blue,
          ),
        ),
      ),
    ));
  }
}


// Scaffold means individual screen of activity

//tag must be same in both activity or widget

