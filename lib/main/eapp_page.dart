import 'package:flutter/material.dart';

class EappPage extends StatefulWidget {
  @override
  EappState createState() => new EappState();
}

class EappState extends State<EappPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("应用"),
        ),
        body: new Center(
          child: new Text('Hello EappPage'),
        ),
      ),
    );
  }
}