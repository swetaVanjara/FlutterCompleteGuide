import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  void answerQuestion() {
    print('Answer choosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: [
            Text("The Question!"),
            RaisedButton(
              //answerQuestion()- not want to build starting just want to build when button is pressed. need to pass pointer
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              //annoymyous function bccz no name here.
              onPressed: () {
                print('Answer 2 choosen');
              },
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: () => print("Answer 3 choosen"),
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
