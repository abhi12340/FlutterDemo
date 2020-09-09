import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _question = [
    'What\'s your favorite color? ',
    'What\'s your favorite animal? ',
  ];

  var questionIndex = 0;

  void _buttonPressed() {
    setState(() {
      if (questionIndex < _question.length - 1) {
        questionIndex += 1;
      }
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first App')),
        body: Column(
          children: [
            Questions(
              _question[questionIndex]
              ),
            Answer(_buttonPressed),
            Answer(_buttonPressed),
            Answer(_buttonPressed),
          ],
        ),
      ),
    );
  }
}
