import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  var _saved = new Set<WordPair>();
  SavedPage(Set<WordPair> hasSaved){
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
        title: new Text('Saved Suggestions'),
      ),
      body: new ListView(children: divided),
    );
  }

}