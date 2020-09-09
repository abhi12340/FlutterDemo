import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

final Function selectHandler;

Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: RaisedButton(child: Text('Answer'), 
      onPressed: selectHandler),
    );
  }
}
