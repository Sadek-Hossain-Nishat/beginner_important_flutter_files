import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(SliverAppWidget());
}

class SliverAppWidget extends StatefulWidget {
  const SliverAppWidget({Key? key}) : super(key: key);

  @override
  _SliverAppWidgetState createState() => _SliverAppWidgetState();
}

class _SliverAppWidgetState extends State<SliverAppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            title: Text('AppBar Widget'),
            centerTitle: true,
          ),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true, //for stable the sliverappbar
                expandedHeight: 200,
                backgroundColor: Colors.red,
                title: Text('Easy Explanation'),
                centerTitle: true,
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                addDetails('One', 'This is one'),
                addDetails('Two', 'This is two'),
                addDetails('three', 'This is three'),
                addDetails('four', 'This is four'),
                addDetails('five', 'This is five'),
                addDetails('six', 'This is six'),
                addDetails('seven', 'This is seven'),
                addDetails('eight', 'This is eight'),
                addDetails('nine', 'This is nine'),
                addDetails('ten', 'This is ten'),
              ]))
            ],
          ),
        )));
  }
}

Widget addDetails(String name, String description) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(child: Text(name)),
  );
}



//  ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),
//                 ListTile(
//                   title: Text('One'),
//                   subtitle: Text('This is one'),
//                 ),