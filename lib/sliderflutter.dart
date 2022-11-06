import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(SliderFlutter());
}

class SliderFlutter extends StatelessWidget {
  const SliderFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeForSlider(),
    );
  }
}

class HomeForSlider extends StatefulWidget {
  const HomeForSlider({Key? key}) : super(key: key);

  @override
  _HomeForSliderState createState() => _HomeForSliderState();
}

class _HomeForSliderState extends State<HomeForSlider> {
  var _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Slider in Flutter'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            'Slider slides ${_value} ',
            style: TextStyle(fontSize: _value),
          ),
          SizedBox(
            height: 100,
          ),
          Slider(
              min: 10,
              max: 50,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                  print(_value);
                });
              }),
        ],
      )),
    ));
  }
}
