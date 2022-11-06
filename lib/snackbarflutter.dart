import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(SnackBarFlutter());
}

class SnackBarFlutter extends StatelessWidget {
  const SnackBarFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeforSnackBar(),
    );
  }
}

class HomeforSnackBar extends StatefulWidget {
  const HomeforSnackBar({Key? key}) : super(key: key);

  @override
  _HomeforSnackBarState createState() => _HomeforSnackBarState();
}

class _HomeforSnackBarState extends State<HomeforSnackBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('I am snackbar'),
                duration: Duration(seconds: 15),
                action: SnackBarAction(label: 'ok', onPressed: () {}),
              ));
            },
            child: Text('Click me')),
      ),
    ));
  }
}
