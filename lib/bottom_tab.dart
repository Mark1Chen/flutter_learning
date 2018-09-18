import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/main/contact_page.dart';
import 'package:flutter_app/main/conversation_page.dart';
import 'package:flutter_app/main/eapp_page.dart';
import 'package:flutter_app/main/personal_page.dart';

class BottomTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new BottomTabState();
}

class BottomTabState extends State<BottomTabPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new TabBarView(
          controller: controller,
          children: [
            new ConversationPage(),
            new ContactPage(),
            new EappPage(),
            new PersonalPage()
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child: new TabBar(
            controller: controller,
            tabs: [
              new Tab(
                icon: new Icon(
                  Icons.message,
                ),
              ),
              new Tab(
                icon: new Icon(
                  Icons.book,
                ),
              ),
              new Tab(
                icon: new Icon(
                  Icons.apps,
                ),
              ),
              new Tab(
                icon: new Icon(
                  Icons.person,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}