import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ColumnFlutterApp());
}

class ColumnFlutterApp extends StatelessWidget {
  const ColumnFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text("Column in Flutter"),
                centerTitle: true,
              ),
              body: ListView(children: [
                Column(
                  children: [
                    Container(
                        height: 200, width: 150, color: Colors.deepOrange),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        height: 200, width: 150, color: Colors.deepOrange),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        height: 200, width: 150, color: Colors.deepOrange),
                    SizedBox(
                      height: 50,
                    ),
                    Container(height: 200, width: 150, color: Colors.deepOrange)
                  ],
                ),
              ]))),
    );
  }
}


// for row implementation we can use Row instead of Column
// we have to use SizedBox for seeing the gap between row widgets
//but here we have to use width property in SizedBox instead of height




//for Column

// body: Column(
//                 children: [
//                   Container(height: 200, width: 150, color: Colors.deepOrange),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Container(height: 200, width: 150, color: Colors.deepOrange),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Container(height: 200, width: 150, color: Colors.deepOrange),
//                 ],
//               )


//for row view

// body: Row(
//                 children: [
//                   Container(height: 200, width: 150, color: Colors.deepOrange),
//                   SizedBox(
//                     width: 50,
//                   ),
//                   Container(height: 200, width: 150, color: Colors.deepOrange),
//                   SizedBox(
//                     width: 50,
//                   ),
//                   Container(height: 200, width: 150, color: Colors.deepOrange),
//                 ],
//               )


//for removing overflow along horizontally or vertically you can use SingleChilsScrollView
// and you must have to assign the scrollview direction
//body: SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //           height: 200, width: 150, color: Colors.deepOrange),
              //       SizedBox(
              //         width: 50,
              //       ),
              //       Container(
              //           height: 200, width: 150, color: Colors.deepOrange),
              //       SizedBox(
              //         width: 50,
              //       ),
              //       Container(
              //           height: 200, width: 150, color: Colors.deepOrange),
              //     ],
              //   ),
              // ) 



              // or another example for showing column

              // body: SingleChildScrollView(
                
              //   scrollDirection: Axis.vertical,
              //   child: Column(
              //     children: [
              //       Container(
              //           height: 200, width: 150, color: Colors.deepOrange),
              //       SizedBox(
              //         height: 50,
              //       ),
              //       Container(
              //           height: 200, width: 150, color: Colors.deepOrange),
              //       SizedBox(
              //         height: 50,
              //       ),
              //       Container(
              //           height: 200, width: 150, color: Colors.deepOrange),
              //     ],
              //   ),
              // )


              // or you can also use ListView

              //body: ListView(children: [
              //   Column(
              //     children: [
              //       Container(
              //           height: 200, width: 150, color: Colors.deepOrange),
              //       SizedBox(
              //         height: 50,
              //       ),
              //       Container(
              //           height: 200, width: 150, color: Colors.deepOrange),
              //       SizedBox(
              //         height: 50,
              //       ),
              //       Container(
              //           height: 200, width: 150, color: Colors.deepOrange),
              //       SizedBox(
              //         height: 50,
              //       ),
              //       Container(height: 200, width: 150, color: Colors.deepOrange)
              //     ],
              //   ),
              // ])
