import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  //mixture of properties and method // getter method never receive argument //normal property value is calaculated dynamically
  String get resultPharse {
    var resultText;
    if (resultScore < 8) {
      resultText = "You\'re awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "Preety likeable!";
    } else if (resultScore <= 16) {
      resultText = "You\'re strange!";
    } else {
      resultText = "You\'re so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              resultPharse,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: FlatButton(
              onPressed: resetQuiz,
              child: Text('Restart quiz'),
              textColor: Colors.white,
              color: Colors.deepOrange,
            ),
          )
        ],
      ),
    );
  }
}
