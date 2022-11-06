import 'package:flutter/material.dart';

class One extends StatelessWidget {
  var txt;
  One([this.txt = 'One']);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Text(txt),
      ),
    ));
  }
}
