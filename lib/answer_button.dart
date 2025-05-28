import 'package:flutter/material.dart';
class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() buttonPressed;

  const AnswerButton({
    super.key,
    required this.answerText,
    required this.buttonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        buttonPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(10, 255, 255, 255),
        foregroundColor: const Color.fromARGB(255, 240, 237, 238),
        side: const BorderSide(
          color: Color.fromARGB(255, 41, 4, 100),
          width: 2,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        style: const TextStyle(
          color: Color.fromARGB(255, 240, 237, 238),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}