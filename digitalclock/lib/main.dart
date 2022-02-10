import 'dart:async';

import 'package:flutter/material.dart';

import 'digit.dart';

void main() {
  runApp(const MyDigitalClock());
}

class MyDigitalClock extends StatelessWidget {
  const MyDigitalClock({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DigitalClock(title: 'Digital Clock'),
    );
  }
}

class DigitalClock extends StatefulWidget {
  const DigitalClock({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  _DigitalClockState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      print(DateTime.now());
      _incrementCounter();
    });
  }
  int _counter = 0;
  int hour = DateTime.now().hour;
  int minute = DateTime.now().minute;
  int second = DateTime.now().second;

  void _incrementCounter() {
    setState(() {
      hour = DateTime.now().hour;
      minute = DateTime.now().minute;
      second = DateTime.now().second;

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(158, 158, 158, 1),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyDigit(
              value: hour,
            ),
            MyDigit(
              value: minute,
            ),
            MyDigit(
              value: second,
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
