import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ExpandedWidgetFlutter());
}

class ExpandedWidgetFlutter extends StatelessWidget {
  const ExpandedWidgetFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  title: Text('Expanded Widget'),
                  centerTitle: true,
                ),
                body: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.green,
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.amber,
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.blue,
                        )),
                  ],
                ))));
  }
}
