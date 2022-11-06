import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mydemo',
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter App"),
          centerTitle: true,
          // for showing a button or anything in the right side of the app bar ->
          // you have to use 'action'
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo))
          ],
          // for showing a button or anything in the left side of the app bar
          //you have to use leading
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        ),
        body: Container(
            child: Center(
          child: Container(
              child: Image.network(
                  "https://image.shutterstock.com/image-photo/lovely-beach-picture-beautiful-260nw-1554809048.jpg")),
        )),
      )),
    );
  }
}
