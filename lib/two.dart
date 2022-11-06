import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  var txt;
  Two([this.txt = 'Two']);
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
