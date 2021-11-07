import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //this value never change that's why final
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //container as much size as much width so basically width of the device so can centering text otherwise it'll take text size.
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
