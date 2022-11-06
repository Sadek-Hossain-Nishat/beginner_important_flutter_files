import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RichTextFlutter());
}

class RichTextFlutter extends StatelessWidget {
  const RichTextFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('Rich Text'),
          centerTitle: true,
        ),
        body: Center(
            child: RichText(
                text: TextSpan(
                    text: "Easy Explanation",
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue),
                    children: [
              TextSpan(
                text: 'subscribe',
                style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                    fontSize: 50),
              )
            ]))),
      )),
    );
  }
}
