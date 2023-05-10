import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());
// runApp prompts flutter to draw sth onto the screen and hence calls the
// build function/method responsible for returning a new widget which will
// be drawn onto the screen

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  // this is a constructor func & passing its params in {} make them optional

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _totalScore = 0;
  var _questInt = 0;
  final _questions = const [
    {
      'questHolder': 'Which of these is not a user status?',
      'ansHolder': [
        {'text': 'User', 'score': 0},
        {'text': 'Admin', 'score': 1},
        {'text': 'Analyst', 'score': 0},
        {'text': 'Operator', 'score': 0}
      ]
    },
    {
      'questHolder': 'What day is independence',
      'ansHolder': [
        {'text': 'May 1st', 'score': 0},
        {'text': 'July 4th', 'score': 0},
        {'text': 'October 1st', 'score': 1},
      ]
    },
    {
      'questHolder': 'How is matter formed',
      'ansHolder': [
        {'text': 'Big bang theory', 'score': 0},
        {'text': 'From nothing', 'score': 0},
        {'text': 'Atoms form them', 'score': 1},
        {'text': 'From words', 'score': 0}
      ]
    }
  ];

  @override
  void _restartQuiz() {
    setState(() {
      _totalScore = 0;
      _questInt = 0;
    });
  }

  @override
  void _answer(int score) {
    _totalScore += score;

    setState(() {
      _questInt += 1;
    });
    print('Clicked on an answer');
  }

  @override
  Widget build(BuildContext context) {
    // const stu = ['stuff', 'clash'];
    // stu.add('new quiz question');

    // var put = const ['check', 'blur', 'gonty'];
    // put = ['faking', 'blackers'];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
          elevation: 0,
        ),
        body: _questions.length > _questInt
            ? Quiz(
                dict: _questions,
                counter: _questInt,
                ans: _answer,
              )
            : Result(score: _totalScore, start: _restartQuiz),
      ),
    );
  }
}

// superpacifier movie
// WURA movie
