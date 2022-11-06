import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Imageassetandnetwork());
}

class Imageassetandnetwork extends StatelessWidget {
  const Imageassetandnetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
          centerTitle: true,
        ),
        body: Center(child: Image.asset('images/16383.jpg')),
      )),
    );
  }
}
