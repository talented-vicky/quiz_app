import 'package:flutter/material.dart';

import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> dict;
  final int counter;
  final Function ans;
  const Quiz(
      {super.key,
      required this.counter,
      required this.dict,
      required this.ans});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(quest: dict[counter]['questHolder'] as String),
      // the spread operator takes the list and renders its component as individual
      // items, hence we're not adding a list to a list(the Column) but the values
      // of a list
      ...(dict[counter]['ansHolder'] as List<String>).map((res) {
        return Answer(answerCall: ans, answer: res);
      }).toList(),
    ]);
  }
}
