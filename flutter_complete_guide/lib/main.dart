import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

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
              onPressed: null,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
