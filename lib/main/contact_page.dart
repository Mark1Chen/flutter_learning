import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  ContactState createState() => new ContactState();
}

class ContactState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("联系人"),
        ),
        body: new Center(
          child: new Text('Hello ContactPage'),
        ),
      ),
    );
  }
}