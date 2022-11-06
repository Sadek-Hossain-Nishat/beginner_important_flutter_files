import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AlertDiaglogExampleFlutter());
}

class AlertDiaglogExampleFlutter extends StatelessWidget {
  const AlertDiaglogExampleFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: MyHomePageAlertDialog());
  }
}

class MyHomePageAlertDialog extends StatefulWidget {
  const MyHomePageAlertDialog({Key? key}) : super(key: key);

  @override
  _MyHomePageAlertDialogState createState() => _MyHomePageAlertDialogState();
}

class _MyHomePageAlertDialogState extends State<MyHomePageAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert Dialog'),
                        content: Text('This is simple Alert Dialog'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Ok'))
                        ],
                      );
                    });
              },
              child: Text('Click On'))
        ],
      )),
    ));
  }
}
