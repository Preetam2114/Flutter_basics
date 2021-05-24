import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Results(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 7) {
      resultText = 'You are awesome';
    } else if (resultScore <= 10) {
      resultText = 'Your are Pretty likeable';
    } else {
      resultText = 'Your are Strange';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          style: TextButton.styleFrom(primary: Colors.orange),
          onPressed: resetHandler,
          child: Text('Restart Quiz'),
        )
      ],
    ));
  }
}
