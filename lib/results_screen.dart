import 'package:flutquiz/centered_text.dart';
import 'package:flutquiz/models/data/questions.dart';
import 'package:flutquiz/questions_summary/questions_summary.dart';
import 'package:flutquiz/quiz_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.setScreen, this.selectedAnswers, this.correctAnswers, {super.key});
  final List<String> selectedAnswers;
  final List<String> correctAnswers; // This should be replaced with actual correct answers
  final int correctCount = 0; // This should be calculated based on selectedAnswers and correctAnswers
  final void Function(QuizScreen) setScreen;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summaryData = getSummaryData();
    final int correctCount = summaryData
      .where((data) => data['isCorrect'] as bool)
      .length;

    return Container(
        padding: const EdgeInsets.all(30),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          CenteredText(
            'You answered $correctCount out of ${questions.length} questions correctly!',
            style: GoogleFonts.aBeeZee(
              color: Color.fromARGB(255, 233, 147, 187),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          CenteredText(
            'List of questions and answers...',
            style: GoogleFonts.aBeeZee(
              color: Color.fromARGB(255, 233, 147, 187),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          QuestionsSummary(summaryData: summaryData),
          const SizedBox(height: 15),
          OutlinedButton.icon(
            onPressed: () {
              setScreen(QuizScreen.splash);
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 240, 237, 238),
              side: const BorderSide(
                color: Color.fromARGB(255, 41, 4, 100),
                width: 2,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            icon: Icon(
              Icons.arrow_right_alt,
              size: 24,
              color: const Color.fromARGB(255, 240, 237, 238),
            ),
            label: const Text(
              "Restart Quiz",
              style: TextStyle(
                color: Color.fromARGB(255, 240, 237, 238),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Map<String, Object>> getSummaryData(){
    List<Map<String, Object>> summaryData = [];
    for (int i = 0; i < selectedAnswers.length; i++) {
      summaryData.add({
        'questionIndex': i, 
        'question': questions[i].text,
        'selectedAnswer': selectedAnswers[i],
        'correctAnswer': questions[i].correctAnswer,
        'isCorrect': selectedAnswers[i] == correctAnswers[i],
      });
    }
    return summaryData;
  }
}
