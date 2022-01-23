import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and inocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  Result({@required this.resultScore, @required this.reset});
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
          FlatButton(
            onPressed: reset,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
