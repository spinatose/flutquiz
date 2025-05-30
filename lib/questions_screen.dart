import 'package:flutquiz/answer_button.dart';
import 'package:flutquiz/centered_text.dart';
import 'package:flutquiz/models/data/questions.dart';
import 'package:flutquiz/models/quizquestion.dart';
import 'package:flutquiz/quiz_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.setScreen, {super.key});
  final void Function(QuizScreen) setScreen;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
      if (currentQuestionIndex == questions.length) {
        currentQuestionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questions[currentQuestionIndex];

    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CenteredText(currentQuestion.text, style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
          ),
          ...currentQuestion.shuffledAnswers.expand(
            (answer) => [
              const SizedBox(height: 10),
              AnswerButton(
                answerText: answer,
                buttonPressed: answerQuestion,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
