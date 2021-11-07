import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

//_ - turns this class into private only use inside same file(main.dart)
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
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
            Text(questions[_questionIndex]),
            RaisedButton(
              //answerQuestion()- not want to build starting just want to build when button is pressed. need to pass pointer
              onPressed: _answerQuestion,
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
