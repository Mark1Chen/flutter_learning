import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_tab.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/random_list.dart';
import 'package:flutter_app/tab_bar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new MainPage()
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>  new MainState();
}

class MainState extends State {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Welcome to Flutter'),
      ),
      body: new Center(
        child: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                    onPressed: () {
                      route_login();
                    },
                    child: new Text("Login")
                ),

                new RaisedButton(
                    onPressed: () {
                      route_randomList();
                    },
                    child: new Text("Random List")
                ),

                new RaisedButton(
                    onPressed: () {
                      route_pager();
                    },
                    child: new Text("Pager")
                ),

                new RaisedButton(
                    onPressed: () {
                      route_tab();
                    },
                    child: new Text("Tab")
                ),
              ],
            )
        ),
      )


    );
  }


  void route_login() {
    Navigator.of(context).push(
      new MaterialPageRoute(builder: (context) {
        return new LoginPage();
      }),
    );
  }

  void route_randomList() {
    Navigator.of(context).push(
      new MaterialPageRoute(builder: (context) {
        return new RandomList();
      }),
    );
  }

  void route_pager() {
    Navigator.of(context).push(
      new MaterialPageRoute(builder: (context) {
        return new BottomTabPage();
      }),
    );
  }

  void route_tab() {
    Navigator.of(context).push(
      new MaterialPageRoute(builder: (context) {
        return new TabPage();
      }),
    );
  }
}
