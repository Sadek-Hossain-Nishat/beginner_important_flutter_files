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
          title: Text('Card View'),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                // borderRadius: BorderRadius.all(Radius.circular(50))), //round rectangular circular border radius in all side
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        50))), //border radius in a specific side so we use only that time

            child: Container(
              height: 200,
              width: 200,
            ),
          ),
        ),
      )),
    );
  }
}
