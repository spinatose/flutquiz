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
    return Column(
      children: summaryData.map(
        (data) {
          // final question = data['question'] as QuizQuestion;
          // final selectedAnswer = data['selectedAnswer'] as String;
          // final correctAnswer = data['correctAnswer'] as String;
          final isCorrect = data['isCorrect'] as bool;

          return Row(
            children: [
              Text(((data['questionIndex'] as int) + 1).toString()),
              Column(children: [
                Text(data['question'] as String,
                    style: GoogleFonts.aBeeZee(
                      color: const Color.fromARGB(255, 233, 147, 187),
                      fontSize: 16,
                    )),
                SizedBox(height: 5),
                Text(data['selectedAnswer'] as String,
                    style: GoogleFonts.aBeeZee(
                      color: isCorrect
                          ? const Color.fromARGB(255, 17, 147, 223)
                          : Colors.red,
                      fontSize: 14,
                    )),
                Text(data['correctAnswer'] as String,
                    style: GoogleFonts.aBeeZee(
                      color:const Color.fromARGB(255, 17, 147, 223),
                      fontSize: 14,
                    )),
              ],)
          ]);
        },
      ).toList(),
    );
  }
  // Widget build(BuildContext context) {
  //   return Expanded(
  //     child: ListView.builder(
  //       itemCount: summaryData.length,
  //       itemBuilder: (context, index) {
  //         final question = summaryData[index]['question'] as QuizQuestion;
  //         final selectedAnswer = summaryData[index]['selectedAnswer'] as String;
  //         final correctAnswer = summaryData[index]['correctAnswer'] as String;
  //         final isCorrect = summaryData[index]['isCorrect'] as bool;

  //         return ListTile(
  //           title: Text(
  //             question.text,
  //             style: GoogleFonts.aBeeZee(
  //               color: const Color.fromARGB(255, 233, 147, 187),
  //               fontSize: 16,
  //             ),
  //           ),
  //           subtitle: Text(
  //             isCorrect ? 'Your correct answer: $correctAnswer' : 'Your answer: $selectedAnswer\nCorrect answer: $correctAnswer',
  //             style: GoogleFonts.aBeeZee(
  //               color: isCorrect ? const Color.fromARGB(255, 17, 147, 223) : Colors.red,
  //               fontSize: 14,
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }
} 