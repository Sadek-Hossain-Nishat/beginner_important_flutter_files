import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ToolTitpFlutter());
}

class ToolTitpFlutter extends StatelessWidget {
  const ToolTitpFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageforTolTip(),
    );
  }
}

class HomePageforTolTip extends StatefulWidget {
  const HomePageforTolTip({Key? key}) : super(key: key);

  @override
  _HomePageforTolTipState createState() => _HomePageforTolTipState();
}

class _HomePageforTolTipState extends State<HomePageforTolTip> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Tool Tip'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.dashboard),
              tooltip: "DashBoard",
            ),
            Tooltip(
              message: "Green Container",
              child: Container(
                height: 250,
                width: 250,
                color: Colors.green,
              ),
            ),
            Tooltip(
              message: "Ad Units",
              child:
                  ElevatedButton(onPressed: () {}, child: Icon(Icons.ad_units)),
            )
          ],
        ),
      ),
    ));
  }
}
