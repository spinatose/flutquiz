import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: summaryData.length,
        itemBuilder: (context, index) {
          final question = summaryData[index]['question'] as String;
          final selectedAnswer = summaryData[index]['selectedAnswer'] as String;
          final correctAnswer = summaryData[index]['correctAnswer'] as String;
          final isCorrect = summaryData[index]['isCorrect'] as bool;

          return ListTile(
            title: Row(
              children: [
                Text(
                  '${index + 1}. ',
                  style: GoogleFonts.aBeeZee(
                    color: const Color.fromARGB(255, 17, 147, 223),
                    fontWeight: FontWeight.bold,
                  ), 
                ),
                Expanded(
                  child: Text(
                    question,
                    style: GoogleFonts.aBeeZee(
                      color: const Color.fromARGB(255, 233, 147, 187),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            subtitle: Row(
              children: [
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    isCorrect
                        ? 'Your correct answer: $correctAnswer'
                        : 'Your answer: $selectedAnswer\nCorrect answer: $correctAnswer',
                    style: GoogleFonts.aBeeZee(
                      color:
                          isCorrect
                              ? const Color.fromARGB(255, 17, 147, 223)
                              : Colors.red,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Column(
  //     children:
  //         summaryData.map((data) {
  //           final isCorrect = data['isCorrect'] as bool;

  //           return Expanded(
  //             child: Padding(
  //               padding: const EdgeInsets.symmetric(vertical: 8.0),
  //               child: Row(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     ((data['questionIndex'] as int) + 1).toString(),
  //                     style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
  //                   ),
  //                   const SizedBox(width: 12),
  //                   Expanded(
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Text(
  //                           data['question'] as String,
  //                           style: GoogleFonts.aBeeZee(
  //                             color: const Color.fromARGB(255, 233, 147, 187),
  //                             fontSize: 16,
  //                           ),
  //                         ),
  //                         const SizedBox(height: 5),
  //                         Text(
  //                           data['selectedAnswer'] as String,
  //                           style: GoogleFonts.aBeeZee(
  //                             color:
  //                                 isCorrect
  //                                     ? const Color.fromARGB(255, 17, 147, 223)
  //                                     : Colors.red,
  //                             fontSize: 14,
  //                           ),
  //                         ),
  //                         Text(
  //                           data['correctAnswer'] as String,
  //                           style: GoogleFonts.aBeeZee(
  //                             color: const Color.fromARGB(255, 17, 147, 223),
  //                             fontSize: 14,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           );
  //         }).toList(),
  //   );
  // }
}
