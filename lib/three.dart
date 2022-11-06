import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  var txt;
  Three([this.txt = 'Three']);
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
