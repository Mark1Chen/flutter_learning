import 'dart:io';
import 'dart:convert';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatefulWidget {
  var _saved = new Set<WordPair>();
  SavedPage(Set<WordPair> hasSaved){
    _saved = hasSaved;
  }


  @override
  State<StatefulWidget> createState() => new HttpState(_saved);

}

class HttpState extends State<SavedPage> {
  var _title = 'Saved Suggestions';
  var _saved = new Set<WordPair>();

  HttpState(Set<WordPair> hasSaved){
  _saved = hasSaved;
  }

  @override
  Widget build(BuildContext context) {
    final _biggerFont = const TextStyle(fontSize: 18.0);
    final tiles = _saved.map(
          (pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
          onTap:(){
            _httptest();
          },

        );
      },
    );
    final divided = ListTile
        .divideTiles(
      tiles: tiles,
      context: context,
    ).toList();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('$_title'),
      ),
      body: new ListView(children: divided),
    );
  }

  void _httptest()  async {
    var url = 'https://httpbin.org/ip';
    var httpClient = new HttpClient();

    String result;
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
    _title = result;
    setState(() {});
  }

}