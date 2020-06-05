import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int totalScore;
  Result(this.resetHandler, this.totalScore);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are a awesome and innocent!';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (totalScore <= 16) {
      resultText = 'You are .... strange!';
    } else {
      resultText = 'You are bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          textColor: Colors.blueGrey,
          child: Text('Reset Quiz'),
        ),
      ],
    );
  }
}
