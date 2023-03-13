// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './text.dart';
import './textControl.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var _phrases = ["Hello World", "Hello Flutter"];
  var _currentPhrase = 0;

  _switchPhrase() {
    setState(() {
      _currentPhrase = _currentPhrase == 0 ? 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Assignment")),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                TextDisplay(_phrases[_currentPhrase]),
                TextControl(_switchPhrase)
              ],
            )),
      ),
    );
  }
}
