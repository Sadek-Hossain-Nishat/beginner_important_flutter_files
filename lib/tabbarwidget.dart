import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/one.dart';
import 'package:myfirstflutterapp/three.dart';
import 'package:myfirstflutterapp/two.dart';

void main(List<String> args) {
  runApp(TabBarWidget());
}

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: DefaultTabController(
                length: 3,
                child: Scaffold(
                    appBar: AppBar(
                      title: Text('App Bar Widget'),
                      centerTitle: true,
                      bottom: TabBar(tabs: [
                        Tab(text: 'Chats'),
                        Tab(text: 'Users'),
                        Tab(text: 'Profile'),
                      ]),
                    ),
                    body: TabBarView(children: [
                      One('Chats'),
                      Two('Users'),
                      Three('Profile')
                    ])))));
  }
}
