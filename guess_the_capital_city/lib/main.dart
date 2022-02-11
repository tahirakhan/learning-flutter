import 'package:flutter/material.dart';
import 'package:guess_the_capital_city/flash_card.dart';
import 'package:guess_the_capital_city/score_card.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'countries.dart';

void main() {
  runApp(GuessCapitalCityGame());
}

class GuessCapitalCityGame extends StatelessWidget {
  const GuessCapitalCityGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameDashboard(
        title: "",
      ),
    );
  }
}

class GameDashboard extends StatefulWidget {
  const GameDashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<GameDashboard> createState() => _GameDashboardState();
}

class _GameDashboardState extends State<GameDashboard> {
  int index = 0;
  int score = 0;
  int totalAttempted = 0;
  bool showAlert = false;
  bool showAnswer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ScoreCard(
              score: score,
              attempts: totalAttempted,
            ),
            FlashCard(
                name: !showAnswer
                    ? countries[index]['country']!
                    : countries[index]['city']!,
                showAnswer: showAnswer),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showAnswer = !showAnswer;
                    });
                  },
                  child: Text(
                    'Show ${showAnswer ? 'Question' : 'Answer'}',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    setState(() {
                      if (index < countries.length - 1) {
                        index++;
                        score++;
                        totalAttempted++;
                      } else {
                        Alert(
                          context: context,
                          title: "ALERT",
                          desc: "You have already reached to the end of list.",
                        ).show();
                      }
                    });
                  },
                  child: Text(
                    'Correct',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    setState(() {
                      if (index < countries.length - 1) {
                        index++;
                        totalAttempted++;
                      } else {
                        Alert(
                          context: context,
                          title: "ALERT",
                          desc: "You have already reached to the end of list.",
                        ).show();
                      }
                    });
                  },
                  child: Text(
                    'Wrong',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index = 0;
            totalAttempted = 0;
            score = 0;
            showAnswer = false;
          });
        },
        child: Text('Reset'),
      ),
    );
  }
}
