import 'package:flutter/material.dart';

class MyDigit extends StatelessWidget {
  MyDigit({required int value}) : value = value;
  int value;

  String _getValue() {
    return value / 10 < 1 ? "0" + value.toString() : value.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          _getValue(),
          style: TextStyle(
              color: Colors.white, fontSize: 75, fontWeight: FontWeight.bold),
        ),
      ),
      margin: const EdgeInsets.all(3),
      width: 120,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Color.fromRGBO(0, 169, 243, 1), width: 3),
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
