import 'package:flutter/material.dart';

class Four extends StatelessWidget {
  const Four({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Text('Four'),
      ),
    ));
  }
}
