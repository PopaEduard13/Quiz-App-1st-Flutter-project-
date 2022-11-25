import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    var resultText;
    if (resultScore == 0) {
      resultText = 'Slab rau de tot!';
    } else if (resultScore == 1) {
      resultText = 'Hai ca ai nimerit una!';
    } else if (resultScore == 2) {
      resultText = 'Se putea si mai bine!';
    } else if (resultScore == 3) {
      resultText = 'Mai bine decat colegii mei de clasa :)';
    } else if (resultScore == 4) {
      resultText = 'Stiam ca sunt crush ul tau :*';
    } else
      resultText = 'Ma cam spionezi asa in timpul tau liber :))';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            resultScore.toString() + '/5',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.lightGreenAccent,
            ),
          ),
          ElevatedButton(
            onPressed: restartQuiz,
            child: Text('Reset quiz!'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          ),
        ],
      ),
    );
  }
}
