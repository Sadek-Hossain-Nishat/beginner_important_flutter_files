import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ExpansionTitleWidgetFlutter());
}

class ExpansionTitleWidgetFlutter extends StatelessWidget {
  const ExpansionTitleWidgetFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePageforExpansionTitlleWidget());
  }
}

class HomePageforExpansionTitlleWidget extends StatefulWidget {
  const HomePageforExpansionTitlleWidget({Key? key}) : super(key: key);

  @override
  _HomePageforExpansionTitlleWidgetState createState() =>
      _HomePageforExpansionTitlleWidgetState();
}

class _HomePageforExpansionTitlleWidgetState
    extends State<HomePageforExpansionTitlleWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Expansion Widget'),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text('One'),
                    subtitle: Text('This is one'),
                    leading: Icon(Icons.access_time),
                    trailing: Icon(Icons.arrow_downward),
                    children: [Container(height: 200, color: Colors.purple)],
                  ),
                  ExpansionTile(
                    title: Text('Two'),
                    subtitle: Text('This is two'),
                    leading: Icon(Icons.access_time),
                    trailing: Icon(Icons.arrow_downward),
                    children: [Container(height: 200, color: Colors.green)],
                  ),
                  ExpansionTile(
                    title: Text('Three'),
                    subtitle: Text('This is three'),
                    leading: Icon(Icons.access_time),
                    trailing: Icon(Icons.arrow_downward),
                    children: [Container(height: 200, color: Colors.blue[200])],
                  )
                ],
              ),
            )));
  }
}
