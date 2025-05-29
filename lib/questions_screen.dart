import 'package:flutquiz/answer_button.dart';
import 'package:flutquiz/centered_text.dart';
import 'package:flutquiz/models/data/questions.dart';
import 'package:flutquiz/models/quizquestion.dart';
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
    final QuizQuestion currentQuestion = questions[0];
    
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CenteredText(currentQuestion.text),
        ...currentQuestion.answers.expand((answer) => [
        const SizedBox(height: 10),
        AnswerButton(
          answerText: answer,
          buttonPressed: () {
          widget.setScreen(QuizScreen.splash);
          },
        ),
        ]),
      ],
      ),
    );
  }
}
