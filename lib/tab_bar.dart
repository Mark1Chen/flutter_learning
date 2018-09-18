import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TabState();
  }
}

class TabState extends State<TabPage>{
  final List<Tab> mTabs = <Tab>[
    new Tab(text: "会话"),
    new Tab(text: "通讯录"),
    new Tab(text: "应用"),
    new Tab(text: "我")
  ];
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: mTabs.length,
        child: new Scaffold(
            appBar: new AppBar(
              bottom: new TabBar(
                tabs: mTabs,
                isScrollable: true,
              ),
            ),
            body: new TabBarView(children: mTabs.map((Tab tab) {
              return new Center(
                  child: new Text(tab.text));
            }).toList(),
            ),
        )
    );

  }
}