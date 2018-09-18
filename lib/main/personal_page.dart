import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  @override
  PersonalState createState() => new PersonalState();
}

class PersonalState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("个人"),
        ),
        body: new Center(
          child: new Text('Hello PersonalPage'),
        ),
      ),
    );
  }
}