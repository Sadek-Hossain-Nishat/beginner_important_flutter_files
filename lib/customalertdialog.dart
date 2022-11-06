import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(CustomAlertDialogFlutter());
}

class CustomAlertDialogFlutter extends StatelessWidget {
  const CustomAlertDialogFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: MyHomePageForCustomAlertDialog(),
    );
  }
}

class MyHomePageForCustomAlertDialog extends StatefulWidget {
  const MyHomePageForCustomAlertDialog({Key? key}) : super(key: key);

  @override
  _MyHomePageForCustomAlertDialogState createState() =>
      _MyHomePageForCustomAlertDialogState();
}

class _MyHomePageForCustomAlertDialogState
    extends State<MyHomePageForCustomAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.purpleAccent[400],
      appBar: AppBar(
        title: Text('Custom Alert Dialog'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          clipBehavior: Clip
                              .none, // replacement of :overflow:OverFlow.visible
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                                height: 250,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                        'Alert Dialog',
                                        style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 23,
                                            color: Color(0xff070707)),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'I am a Nuclear Engineer but I am so interested in Android Application Development. And I can design and develop Android Application',
                                        style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 18,
                                            color: Color(0xff070707)),
                                      ),
                                    ],
                                  ),
                                )),
                            Positioned(
                                top: -50,
                                child: CircleAvatar(
                                  radius: 50,
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      child: Image.asset('images/16383.jpg')),
                                ))
                          ],
                        ));
                  });
            },
            child: Text('Click On')),
      ),
    ));
  }
}
