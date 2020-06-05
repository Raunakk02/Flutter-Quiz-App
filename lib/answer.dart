import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function answerHandler;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purple[200],
        onPressed: answerHandler,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
