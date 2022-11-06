import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data.dart';

class Receive extends StatelessWidget {
  const Receive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Data>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            title: Text('Receive Data from Home Page'),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
              provider.value.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
        )));
  }
}
