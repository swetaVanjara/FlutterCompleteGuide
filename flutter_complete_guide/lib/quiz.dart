import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  const Quiz({this.answerQuestion, this.questions, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        //add them into surrounding list as individual value . don't want to add a list into list but as value of to list only one list having without nested list
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answer['text'],
            () => answerQuestion(answer['score']),
          );
        }).toList()
      ],
    );
  }
}
