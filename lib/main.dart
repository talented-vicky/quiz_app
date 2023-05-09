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
  var _questInt = 0;
  final _questions = const [
    {
      'questHolder': 'Which of these is not a user status?',
      'ansHolder': ['User', 'Admin', 'Analyst', 'Operator']
    },
    {
      'questHolder': 'What day is independence',
      'ansHolder': ['May 1st', 'July 4th', 'October 1st']
    },
    {
      'questHolder': 'How is matter formed',
      'ansHolder': [
        'Big bang theory',
        'From nothing',
        'Atoms form them',
        'From words'
      ]
    }
  ];
  @override
  void _answer() {
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
            : const Result(),
      ),
    );
  }
}

// superpacifier movie
// WURA movie
