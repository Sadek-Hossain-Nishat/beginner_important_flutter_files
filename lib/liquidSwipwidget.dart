import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(Imageassetandnetwork());
}

class Imageassetandnetwork extends StatelessWidget {
  const Imageassetandnetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listofpages = [
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.orange,
      ),
      Container(color: Colors.green)
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('Liquid Swip'),
          centerTitle: true,
        ),
        body: LiquidSwipe(pages: listofpages),
      )),
    );
  }
}
