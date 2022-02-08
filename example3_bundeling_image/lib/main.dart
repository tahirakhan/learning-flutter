import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    home: Scaffold(

      appBar: AppBar(
        title: Text("My App Bar"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Image(
          image: AssetImage("images/bulb.jpg"),
        ),
      ),
      backgroundColor: Colors.black,
    )
  ));
}

