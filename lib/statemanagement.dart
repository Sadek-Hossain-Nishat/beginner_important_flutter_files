import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/data.dart';
import 'package:myfirstflutterapp/receive.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  //setstate method
  //runApp(StateManagementFlutter());

  //provider method
  runApp(ChangeNotifierProvider(
    create: (context) => Data(),
    child: StatemanagementFlutter2(),
  ));
}

//setstate method

class StateManagementFlutter extends StatelessWidget {
  const StateManagementFlutter({Key? key}) : super(key: key);

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
  int value = 0;
  Increment() {
    setState(() {
      value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value.toString(),
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              onPressed: () {
                Increment();
              },
              child: Text('Click and Increment it'),
            )
          ],
        ),
      ),
    ));
  }
}

// provider method

class StatemanagementFlutter2 extends StatelessWidget {
  const StatemanagementFlutter2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage2(),
    );
  }
}

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Data>(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              provider.value.toString(),
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              onPressed: () {
                provider.Increment();
              },
              child: Text('Click and Increment it'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Receive()));
              },
              child: Text('Sent Data'),
            )
          ],
        ),
      ),
    ));
  }
}
