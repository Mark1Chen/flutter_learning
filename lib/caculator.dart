import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Caculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new CaculatorState();
}

class CaculatorState extends State {
  var screen = "12";
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text("Caculator"),
      ),
      body: new Column(
        children: <Widget>[
          new Text(" $screen", key: Key("result_text"),),
          new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              new RaisedButton(
                onPressed: () {
                  press(7);
                },
                child: Text("7"),
              ),
              new RaisedButton(
                onPressed: () {
                  press(8);
                },
                child: Text("8"),
              ),
              new RaisedButton(
                onPressed: () {
                  press(9);
                },
                child: Text("9"),
              ),
            ]
          ),
          new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    press(4);
                  },
                  child: Text("4"),
                ),
                new RaisedButton(
                  onPressed: () {
                    press(5);
                  },
                  child: Text("5"),
                ),
                new RaisedButton(
                  onPressed: () {
                    press(6);
                  },
                  child: Text("6"),
                ),
              ]

          ),
          new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    press(1);
                  },
                  child: Text("1"),
                ),
                new RaisedButton(
                  onPressed: () {
                    press(2);
                  },
                  child: Text("2"),
                ),
                new RaisedButton(
                  onPressed: () {
                    press(3);
                  },
                  child: Text("3"),
                ),
              ]

          ),
          new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    press(-1);
                  },
                  child: Text("C"),
                ),
                new RaisedButton(
                  onPressed: () {
                    press(0);
                  },
                  child: Text("0"),
                ),
                new RaisedButton(
                  onPressed: () {
                    press(-1);
                  },
                  child: Text("."),
                ),
              ]

          )
        ],
      ),
    );
  }

  void press(int input) {
    if(input >= 0 && input <= 9) {
      screen += "$input";
    }
    debugPrint(screen);
  }



}

