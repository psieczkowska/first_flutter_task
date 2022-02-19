import 'package:flutter/material.dart';
import 'custom_text.dart';

class TextControl extends StatelessWidget {
  final List<String> textList;
  final int textIndex;
  final VoidCallback selectHandler;
  TextControl(
      {required this.textList,
      required this.textIndex,
      required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(children: [
        CustomText(
          textList[textIndex],
        ),
        ElevatedButton(
          onPressed: selectHandler,
          child: Text('Zmień tekst'),
        ),
      ]),
    );
  }
}
