import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(FetchingJsonDataFlutter());
}

class FetchingJsonDataFlutter extends StatefulWidget {
  const FetchingJsonDataFlutter({Key? key}) : super(key: key);

  @override
  _FetchingJsonDataFlutterState createState() =>
      _FetchingJsonDataFlutterState();
}

class _FetchingJsonDataFlutterState extends State<FetchingJsonDataFlutter> {
  var data;
  Future getData() async {
    var response =
        await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    setState(() {
      var decode = json.decode(response.body);
      data = decode;
      print(data);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text('Fetching Json Data'),
                centerTitle: true,
              ),
              body: Container()),
        ));
  }
}
