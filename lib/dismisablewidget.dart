import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(DismissableWidgetFlutter());
}

class DismissableWidgetFlutter extends StatelessWidget {
  const DismissableWidgetFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageforDismissable(),
    );
  }
}

class HomePageforDismissable extends StatefulWidget {
  const HomePageforDismissable({Key? key}) : super(key: key);

  @override
  _HomePageforDismissableState createState() => _HomePageforDismissableState();
}

class _HomePageforDismissableState extends State<HomePageforDismissable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Dismissable Widget'),
      ),
      body: Center(
        child: Dismissible(
            secondaryBackground: Container(
              color: Colors.redAccent,
              child: Icon(
                Icons.delete,
                size: 40,
              ),
            ),
            background: Container(
              color: Colors.blue,
              child: Icon(
                Icons.delete,
                size: 40,
              ),
            ),
            key: ValueKey('abc'),
            child: ListTile(
              title: Text('Easy Explanation'),
              subtitle: Text('I love Easy Explanation'),
              trailing: Icon(Icons.ac_unit),
            )),
      ),
    ));
  }
}
