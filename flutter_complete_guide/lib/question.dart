import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //this value never change that's why final
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
