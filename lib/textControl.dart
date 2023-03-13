import "package:flutter/material.dart";

class TextControl extends StatelessWidget {
  final VoidCallback switchPhrase;

  TextControl(this.switchPhrase);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: switchPhrase, child: Text("Switch Phrase"));
  }
}
