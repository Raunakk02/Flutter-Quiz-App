import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        question,
        style: TextStyle(color: Colors.blueGrey[700], fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
