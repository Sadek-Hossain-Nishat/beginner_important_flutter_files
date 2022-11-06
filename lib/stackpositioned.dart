import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Stackpositioned());
}

class Stackpositioned extends StatelessWidget {
  const Stackpositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        //we don't use floating action button on body
        //so that it is not scrolled when screen is scrolled up and down
        // so we have placed floating button inside the scaffold()
        appBar: AppBar(
          title: Text('StackPositioned'),
          centerTitle: true,
        ),
        body: Center(
          //for overlapping one widget on to another widget

          child: Stack(
            clipBehavior: Clip.none, // instaed of overflow:Overflow.visible
            alignment: Alignment.bottomCenter,
            children: [
              Container(height: 200, width: 200, color: Colors.amber),

              // this is positioned
              //
              Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 50,
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
