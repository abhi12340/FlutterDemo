import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
   @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
 var question = [
    'What\'s your favorite color? ',
    'What\'s your favorite animal? ',
  ];

  var questionIndex = 0;

  void buttonPressed() {
    setState(() {
      if(questionIndex < question.length - 1) {
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
            Text(question[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: buttonPressed),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('answer 2 cliked')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('answer 3 pressed');
                }),
          ],
        ),
      ),
    );
  }
}
