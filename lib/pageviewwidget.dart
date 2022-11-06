import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/page1.dart';
import 'package:myfirstflutterapp/page2.dart';
import 'package:myfirstflutterapp/page3.dart';

void main(List<String> args) {
  runApp(PageViewWidget());
}

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  // now we can use dispose method in pageview
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  // dispose method
  //for unmounting the activity life
  //it is a lifecycle issue of dart
  // save the instance of current state
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('PageView Widget'),
          centerTitle: true,
        ),
        body: PageView(
          scrollDirection: Axis.vertical, //vertically scrolling the page
          //by defult in page horizontally scrolling is set
          controller: _controller,
          children: [Page1(), Page2(), Page3()],
        ),
      )),
    );
  }
}

// pageview widget is stateful widget due to change in state in one activity
