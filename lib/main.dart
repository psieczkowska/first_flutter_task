import 'package:flutter/material.dart';
import 'text_control.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _appText = [
    'Przykładowy tekst służący do wykonania zadania.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
  ];
  var _textIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Flutter Task'),
        ),
        body: TextControl(textList: _appText, textIndex: _textIndex, selectHandler: _changeText),
      ),
    );
  }

  void _changeText() {
    setState(() {
      if (_textIndex == 0) {
        _textIndex = 1;
      } else {
        _textIndex = 0;
      }
    });
  }
}
