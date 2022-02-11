import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({required int score, required int attempts})
      : score = score,
        attempts = attempts;
  final int score;
  final int attempts;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Score: $score / $attempts',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 36, color: Colors.black),
        ),
      ),
    );
  }
}
