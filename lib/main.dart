import 'package:flutter/material.dart';


import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0 ;
  var _totalScore = 0 ;
  var _questions = [
    {
      'questionText': 'Care e culoarea mea preferata ?',
      'answers': [
        {'text': 'Verde', 'score': 0},
        {'text': 'Rosu', 'score': 1},
        {'text': 'Albastru', 'score': 0},
        {'text': 'Galben', 'score': 0}
      ],
    },
    {
      'questionText': 'Care e masina mea ideala?',
      'answers': [
        {'text': 'Audi', 'score': 0},
        {'text': 'Bentley', 'score': 0},
        {'text': 'Lamborghini', 'score': 0},
        {'text': 'Tesla', 'score': 1}
      ],
    },
    {
      'questionText': 'Care este desertul meu preferat?',
      'answers': [
        {'text': 'Papanasi', 'score': 0},
        {'text': 'Gogosi', 'score': 0},
        {'text': 'Coliva', 'score': 0},
        {'text': 'Clatite', 'score': 1}
      ],
    },
    {
      'questionText': 'Care este filmul meu preferat?',
      'answers': [
        {'text': 'Wolf of Wall Street', 'score': 0},
        {'text': 'Avengers Endgame', 'score': 1},
        {'text': 'Mission Impossible', 'score': 0},
        {'text': 'Titanic', 'score': 0}
      ],
    },
     {
      'questionText': 'Care este sportul meu preferat?',
      'answers': [
        {'text': 'Volei in sala', 'score': 0},
        {'text': 'Volei de plaja', 'score': 1},
        {'text': 'Biliard', 'score': 0},
        {'text': 'Volei de zapada', 'score': 0}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0 ;
      _totalScore = 0 ;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      ++_questionIndex;
    });
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questions: _questions)
            : Result(_totalScore , _resetQuiz),
      ),
    );
  }
}
