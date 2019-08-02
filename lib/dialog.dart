import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toast/toast.dart';

import 'utils/markdown.dart';

const String _alertText =
"""### **AlertDialog**
> Alerts are urgent interruptions requiring acknowledgement that inform the user about a situation. The AlertDialog widget implements this component.
""";

const String _cupertinoAlertText =
"""### **CupertinoAlertDialog**
> An iOS-style alert dialog.
""";

const String _simpleText =
"""### **SimpleDialog**
>A simple material design dialog.
>A simple dialog offers the user a choice between several options. A simple dialog has an optional title that is displayed above the choices.
""";

class DialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DialogState();
  }
}

class DialogState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Dialog Learning")
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(30,20,30,0),
            child: MarkdownBody(_alertText),
          ),
          SizedBox(height: 5),
          new CupertinoButton(
            child: new Text("Create AlertDialog"),
            onPressed: () {
              createAlertDialog(context);
            }
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.fromLTRB(30,20,30,0),
            child: MarkdownBody(_cupertinoAlertText),
          ),
          SizedBox(height: 5),
          new CupertinoButton(

            child: new Text("Create CupertinoAlertDialog"),
            onPressed: () {
              createCupertinoAlertDialog(context);
            }
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.fromLTRB(30,20,30,0),
            child: MarkdownBody(_simpleText),
          ),
          SizedBox(height: 5),
          new CupertinoButton(

              child: new Text("Create SimpleDialog"),
              onPressed: () {
                createSimpleDialog(context);
              }
          ),
          
        ],
      ),
    );
  }

  void createAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: Text("AlertDialog"),
          content: Text("This is a test AlertDialog"),
          actions: <Widget>[
            MaterialButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            MaterialButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }

  void createCupertinoAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new CupertinoAlertDialog(
            title: Text("CupertinoAlertDialog"),
            content: Text("This is a test CupertinoAlertDialog"),
            actions: <Widget>[
              MaterialButton(
                child: Text("Yes"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              MaterialButton(
                child: Text("No"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
    );
  }

  void createSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new SimpleDialog(
            title: Text("SimpleDialog"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("select test 1"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Toast.show("test 1", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                },
              ),
              SimpleDialogOption(
                child: Text("select test 2"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Toast.show("test 2", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                },
              ),
            ],
          );
        }
    );
  }

}

