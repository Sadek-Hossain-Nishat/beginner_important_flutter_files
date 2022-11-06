import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Listtitlewidget());
}

class Listtitlewidget extends StatelessWidget {
  const Listtitlewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text("List Title Widget"),
          centerTitle: true,
        ),
        body: ListView(children: [
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("Easy Explanation"),
            subtitle: Text('Learn Everything'),
            leading: CircleAvatar(
              child: Icon(Icons.message),
            ),
            trailing: CircleAvatar(child: Icon(Icons.add_a_photo)),
          ),
        ]),
      )),
    );
  }
}




//ListTile is as like as android Recyclerview
