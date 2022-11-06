import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(CrossFadeAnimationFlutter());
}

class CrossFadeAnimationFlutter extends StatelessWidget {
  const CrossFadeAnimationFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageforCrossFadeAnimation(),
    );
  }
}

class HomePageforCrossFadeAnimation extends StatefulWidget {
  const HomePageforCrossFadeAnimation({Key? key}) : super(key: key);

  @override
  _HomePageforCrossFadeAnimationState createState() =>
      _HomePageforCrossFadeAnimationState();
}

class _HomePageforCrossFadeAnimationState
    extends State<HomePageforCrossFadeAnimation> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Cross Fade Animation"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedCrossFade(
                firstChild: Container(
                  height: 200,
                  color: Colors.deepOrange,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          check = false;
                        });
                      },
                      child: Text('Click on')),
                ),
                secondChild: Center(
                  child: Text(
                    'Great',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                crossFadeState: check
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 1)),
          )
        ],
      ),
    ));
  }
}
