import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(TransformWidgetFlutter());
}

class TransformWidgetFlutter extends StatelessWidget {
  const TransformWidgetFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageForTransfromWidget(),
    );
  }
}

class HomePageForTransfromWidget extends StatefulWidget {
  const HomePageForTransfromWidget({Key? key}) : super(key: key);

  @override
  _HomePageForTransfromWidgetState createState() =>
      _HomePageForTransfromWidgetState();
}

class _HomePageForTransfromWidgetState
    extends State<HomePageForTransfromWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Transform Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Transform.translate(
          offset: Offset(-40, 56),
          child: Container(
            width: 150,
            height: 150,
            color: Colors.pink,
          ),
        ),
      ),
    ));
  }
}




//transform rotate

// Transform.rotate(
//           angle: pi / 3,
//           child: Container(
//             width: 150,
//             height: 150,
//             color: Colors.pink,
//           ),
//         ),



//transform scale

// Transform.scale(
//           scale: .6,
//           child: Container(
//             width: 150,
//             height: 150,
//             color: Colors.pink,
//           ),
//         ),



//transform translate


