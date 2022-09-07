import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;
  const Result({Key? key, required this.score, required this.resetHandler})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (score <= 15) {
      resultText = 'You are awesome and innocent';
    } else if (score <= 20) {
      resultText = 'Pretty likable!';
    } else {
      resultText = 'you are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            '$resultPhrase $score',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz!'),
        ),
      ],
    );
  }
}
