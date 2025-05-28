import 'package:flutquiz/answer_button.dart';
import 'package:flutquiz/centered_text.dart';
import 'package:flutquiz/quiz_wrapper.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.setScreen, {super.key});
  final void Function(QuizScreen) setScreen;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CenteredText('Question 1: What is Flutter?'),
        const SizedBox(height: 10),
        AnswerButton(
          answerText: "Answer 1",
          buttonPressed: () {
            widget.setScreen(QuizScreen.splash);
          },
        ),
        const SizedBox(height: 10),
        AnswerButton(
          answerText: "Answer 2",
          buttonPressed: () {
            widget.setScreen(QuizScreen.splash);
          },
        ),
        const SizedBox(height: 10),
        AnswerButton(
          answerText: "Answer 3",
          buttonPressed: () {
            widget.setScreen(QuizScreen.splash);
          },
        ),
        const SizedBox(height: 10),
        AnswerButton(
          answerText: "Answer 4",
          buttonPressed: () {
            widget.setScreen(QuizScreen.splash);
          },
        ),
        const SizedBox(height: 10),
        AnswerButton(
          answerText: "Answer 5",
          buttonPressed: () {
            widget.setScreen(QuizScreen.splash);
          },
        ),
      ],
    );
  }
}
