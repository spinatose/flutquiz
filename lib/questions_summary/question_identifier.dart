import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionIndex;
  final bool isCorrect;

  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: CircleAvatar(
        radius: 15,
        backgroundColor:
            isCorrect ? const Color.fromARGB(255, 17, 147, 223) : Colors.red,
        child: Text(
          (questionIndex + 1).toString(),
          style: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
