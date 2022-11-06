import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MediaqueryFlutterApp());
}

class MediaqueryFlutterApp extends StatelessWidget {
  const MediaqueryFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // you can define the height and width of your container here
    //by var keyword
    //where,

    var heightmediaquery = MediaQuery.of(context).size.height / 3;
    var widgetmediaquery = MediaQuery.of(context).size.width / 2;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text('Media Query'), centerTitle: true),
      body: Center(
        child: Container(
            height: heightmediaquery,
            width: widgetmediaquery,

            //or below the similar way

            //height: MediaQuery.of(context).size.height / 3, //use MediaQuery to determine
            // the height and width of the screen where app will be installed.
            //width: MediaQuery.of(context).size.width / 2,
            color: Colors.deepOrange),
      ),
    ));
  }
}


//media query example


