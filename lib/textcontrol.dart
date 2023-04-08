import 'package:flutter/material.dart';
import './main.dart';
import './textcontent.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String stringShown = "Change the text!";
  void changeText() {
    setState(() {
      stringShown = "text has been changed";
    });
  }

  void resetText() {
    setState(() {
      stringShown = "Change the text!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(stringShown),
      TextButton(
        onPressed: changeText,
        child: TextContent(),
      ),
      TextButton(
        onPressed: resetText,
        child: const Text("Reset the text!"),
      ),
    ]);
  }
}
