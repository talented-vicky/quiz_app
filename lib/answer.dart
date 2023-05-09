import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerCall;
  final String answer;
  // use final (a runtime const) if it won't change after it's initValue is given
  // i.e from the point of time when the program runs/executes
  const Answer({super.key, required this.answerCall, required this.answer});
  // use const (a compiled time const) if the value is never changed {it implicitly
  // (means runtime const and) turns the value to a const}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 5),
      child: ElevatedButton(onPressed: () => answerCall(), child: Text(answer)),
    );
  }
}
