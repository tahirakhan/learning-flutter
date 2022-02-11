import 'package:flutter/material.dart';

class FlashCard extends StatelessWidget {
  const FlashCard({required String name, required bool showAnswer})
      : name = name,
        showAnswer = showAnswer;

  final String name;
  final bool showAnswer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        color: Colors.white,
        shadowColor: Colors.grey,
        elevation: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              !showAnswer ? "Country" : "Capital",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.black),
            ),
            Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.indigo),
            ),
          ],
        ),
      ),
    );
  }
}
