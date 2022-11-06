import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ColorGradient());
}

class ColorGradient extends StatelessWidget {
  const ColorGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        //for using gradient in appbar you have to use flexibleSpace
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.repeated,
                  colors: [Colors.red, Colors.yellow])),
        ),
        title: Text('Gradient Color'),
        centerTitle: true,
      ),
      body: Container(
        // for using gradient in body you have to use decoration and use BoxDecoration Class
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                tileMode: TileMode.repeated,
                colors: [Colors.pink, Colors.deepPurple])),
      ),
    ));
  }
}
