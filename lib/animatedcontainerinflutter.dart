import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AnimatedContainerinFlutter());
}

class AnimatedContainerinFlutter extends StatelessWidget {
  const AnimatedContainerinFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageforAnimatedContainer(),
    );
  }
}

class HomePageforAnimatedContainer extends StatefulWidget {
  const HomePageforAnimatedContainer({Key? key}) : super(key: key);

  @override
  _HomePageforAnimatedContainerState createState() =>
      _HomePageforAnimatedContainerState();
}

class _HomePageforAnimatedContainerState
    extends State<HomePageforAnimatedContainer> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          value = !(value as bool);
        });
      }),
      appBar: AppBar(
        title: Text('Animated Container'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 4),
          height: value == false ? 150 : 350,
          width: value == false ? 150 : 350,
          color: Colors.purple,
        ),
      ),
    ));
  }
}
