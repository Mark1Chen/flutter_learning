import 'package:flutter/material.dart';

class ConversationPage extends StatefulWidget {
  @override
  ConversationState createState() => new ConversationState();
}

class ConversationState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("会话"),
        ),
        body: new Center(
          child: new Text('Hello ConversationPage'),
        ),
      ),
    );
  }
}