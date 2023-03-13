import "package:flutter/material.dart";

class TextDisplay extends StatelessWidget {
  final String phrase;

  TextDisplay(this.phrase);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Text(
          phrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ));
  }
}
