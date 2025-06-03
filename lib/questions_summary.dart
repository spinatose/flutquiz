import 'package:flutquiz/models/quizquestion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: summaryData.length,
        itemBuilder: (context, index) {
          final question = summaryData[index]['question'] as QuizQuestion;
          final selectedAnswer = summaryData[index]['selectedAnswer'] as String;
          final correctAnswer = summaryData[index]['correctAnswer'] as String;
          final isCorrect = summaryData[index]['isCorrect'] as bool;

          return ListTile(
            title: Text(
              question.text,
              style: GoogleFonts.aBeeZee(
                color: const Color.fromARGB(255, 233, 147, 187),
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              isCorrect ? 'Your correct answer: $correctAnswer' : 'Your answer: $selectedAnswer\nCorrect answer: $correctAnswer',
              style: GoogleFonts.aBeeZee(
                color: isCorrect ? const Color.fromARGB(255, 17, 147, 223) : Colors.red,
                fontSize: 14,
              ),
            ),
          );
        },
      ),
    );
  }
} 