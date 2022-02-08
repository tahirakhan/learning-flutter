import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child:

      Container(
          child: Text("Hello World"),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        margin: EdgeInsets.only(left: 10, top: 20),
        color: Colors.deepOrange,
        width: 150,
        height: 70,

      ),

    ),

  ));
      }