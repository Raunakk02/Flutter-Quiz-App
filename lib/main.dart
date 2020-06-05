import 'package:app_practice/quiz.dart';
import 'package:flutter/material.dart';

import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [{'text':'RED','score':10}, {'text':'BLACK','score':5}, {'text':'GREEN','score':3}, {'text':'WHITE','score':1}]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [{'text':'LION','score':10}, {'text':'TIGER','score':5}, {'text':'ELEPHANT','score':3}, {'text':'RABBIT','score':1}]
    },
    {
      'questionText': 'What\'s your favourite cartoon?',
      'answers': [{'text':'Tom & Jerry','score':1}, {'text':'Ninja Hattori','score':1}, {'text':'Oggy and The Cockroaches','score':1}, {'text':'Sinchan','score':1}]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
            backgroundColor: Colors.purple,
          ),
          body: Center(
            child: _questionIndex < questions.length
                ? Quiz(questions: questions,questionIndex: _questionIndex,answerHandler: _answerQuestion)
                :Result(_resetQuiz,_totalScore)
          ),),
    );
  }
}
