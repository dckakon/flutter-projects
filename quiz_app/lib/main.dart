import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\' s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 5},
        {'text': 'Green', 'score': 7},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'dog', 'score': 7},
        {'text': 'Cat', 'score': 2},
        {'text': 'Horse', 'score': 5},
        {'text': 'Bird', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favorite area?',
      'answer': [
        {'text': 'Rampura', 'score': 2},
        {'text': 'Badda', 'score': 5},
        {'text': 'Jatrabari', 'score': 4},
        {'text': 'Md.pur', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer Choosen');

    if (_questionIndex < _questions.length) {
      print('We have more question!');
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override //decorator
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(score: _totalScore, resetHandler: _resetQuiz),
      ),
    );
  }
}
