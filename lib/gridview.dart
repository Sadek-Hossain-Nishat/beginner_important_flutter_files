import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CardandGridView());
}

class CardandGridView extends StatelessWidget {
  const CardandGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text('Grid View'),
                centerTitle: true,
              ),
              body: Padding(
                padding: const EdgeInsets.all(
                    10), //how to wrap padding around the gridview widget
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    Container(height: 200, width: 150, color: Colors.red),
                    Container(height: 200, width: 150, color: Colors.red),
                    Container(height: 200, width: 150, color: Colors.red),
                    Container(height: 200, width: 150, color: Colors.red),
                  ],
                ),
              )),
        ));
  }
}
