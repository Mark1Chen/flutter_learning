import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LoginState();
}

class LoginState extends State<LoginPage> {
  String _title = "Login";
  TextEditingController _userAccountController = new TextEditingController();
  TextEditingController _userPasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _biggerFont = const TextStyle(fontSize: 18.0);

    final _loginAccountWidget = new TextField(
        controller: _userAccountController,
        autofocus: true,
        decoration: new InputDecoration(
            contentPadding: const EdgeInsets.only(top: 15.0),
            icon: new Icon(Icons.person),
            labelText: "Account"));

    final _loginPasswordWidget = new TextField(
        obscureText: true,
        controller: _userPasswordController,
        decoration: new InputDecoration(
            contentPadding: const EdgeInsets.only(top: 15.0),
            icon: new Icon(Icons.lock),
            labelText: "Password"));



    return new Scaffold(
        appBar: new AppBar(
          title: new Text('$_title', style: _biggerFont),
        ),
        body: new Container(
          margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: new Column(
            children: <Widget>[
              // account
              _loginAccountWidget,
              // password
              _loginPasswordWidget,

              new Container(
                height: 15.0,
              ),
              new Builder(builder: (BuildContext context) {
                return new RaisedButton(
                    onPressed: () {
                      _login();
                    },
                    color: Colors.blue,
                    highlightColor: Colors.lightBlueAccent,
                    disabledColor: Colors.lightBlueAccent,
                    child: new Text(
                      "Login",
                      style: new TextStyle(color: Colors.white),
                    ));
              })
            ],
          ),
        ));
  }
  void onTextClear() {
    _userAccountController.text = "";
    _userPasswordController.text = "";
  }

  void _login() async {
    var url = 'https://httpbin.org/ip';
    var httpClient = new HttpClient();
    String result = 'test';
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.OK) {
        var json = await response.transform(UTF8.decoder).join();
        var data = JSON.decode(json);
        result = data['origin'];
      } else {
        result =
        'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }
    setState(() {
      onTextClear();
      _title = result;
    });

  }
}
