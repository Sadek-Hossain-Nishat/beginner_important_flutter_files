import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(BackDropFilterFlutter());
}

class BackDropFilterFlutter extends StatelessWidget {
  const BackDropFilterFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeforBackDropFilter(),
    );
  }
}

class HomeforBackDropFilter extends StatefulWidget {
  const HomeforBackDropFilter({Key? key}) : super(key: key);

  @override
  _HomeforBackDropFilterState createState() => _HomeforBackDropFilterState();
}

class _HomeforBackDropFilterState extends State<HomeforBackDropFilter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Back Drop Filter'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.white.withOpacity(0.3),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
