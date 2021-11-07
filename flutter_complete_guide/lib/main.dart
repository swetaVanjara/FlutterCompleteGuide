import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

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
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'Who\'s your favourite instructor?',
        'answers': ['Max', 'Max', 'Max']
      }
    ];

    //group multiple info text for question and text for answer - Map

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            //add them into surrounding list as individual value . don't want to add a list into list but as value of to list only one list having without nested list
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(
                answerText: answer,
                selectHandler: _answerQuestion,
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
