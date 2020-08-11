import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

    var question = [
      'What\'s your favorite color? ',
      'What\'s your favorite animal? ',
    ];
   
   void buttonPressed() {
     print("button clicked");
   }

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title : Text('My first App')
              ),
              body: Column(
                children: [
                 Text('The Question'),
                 RaisedButton(child: Text('Answer 1'), onPressed: buttonPressed),
                 RaisedButton(child: Text('Answer 2'), onPressed: buttonPressed),
                 RaisedButton(child: Text('Answer 3'), onPressed: buttonPressed), 
               ],
              ),
            ),
        );
    }
}