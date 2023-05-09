import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quest;
  const Question({super.key, required this.quest});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      child: Text(
        quest,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
