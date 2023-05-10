import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function start;
  const Result({super.key, required this.score, required this.start});

  @override
  RestartDialogue(BuildContext context) {
    Widget cancel = TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('No'));
    Widget confirm = TextButton(
        onPressed: () {
          start();
          Navigator.of(context).pop();
        },
        child: const Text('Yes'));
    AlertDialog restart = AlertDialog(
      title: const Text('Confirm Quiz restart'),
      content: const Text(
          'Are you sure you want to restart quiz? All points earned will be lost'),
      actions: [cancel, confirm],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return restart;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Your total score is: ',
          style: TextStyle(fontSize: 23),
        ),
        Text(
          score.toString(),
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            onPressed: () {
              RestartDialogue(context);
            },
            child: const Text('Restart Quiz'))
      ],
    ));
  }
}
