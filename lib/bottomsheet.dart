import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(BottomSheetExampleinFlutter());
}

class BottomSheetExampleinFlutter extends StatelessWidget {
  const BottomSheetExampleinFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePageforBottomSheet(),
    );
  }
}

class MyHomePageforBottomSheet extends StatefulWidget {
  const MyHomePageforBottomSheet({Key? key}) : super(key: key);

  @override
  _MyHomePageforBottomSheetState createState() =>
      _MyHomePageforBottomSheetState();
}

class _MyHomePageforBottomSheetState extends State<MyHomePageforBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                        height: 250,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text('One'),
                                subtitle: Text('This is One'),
                                trailing: Icon(Icons.access_alarm),
                              ),
                              ListTile(
                                title: Text('One'),
                                subtitle: Text('This is One'),
                                trailing: Icon(Icons.access_alarm),
                              ),
                              ListTile(
                                title: Text('One'),
                                subtitle: Text('This is One'),
                                trailing: Icon(Icons.access_alarm),
                              ),
                            ],
                          ),
                        ));
                  });
            },
            child: Text('Click On')),
      ),
    ));
  }
}
