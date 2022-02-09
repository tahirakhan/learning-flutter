import 'package:flutter/material.dart';
import 'package:testimonial_assignment/card.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Container(
          color: Color.fromRGBO(251, 251, 139, 1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyCard(
                name: "Tahir Ali Khan",
                designation: "Sr. Dev Engineer",
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                imageUri:
                    "https://avatars.githubusercontent.com/u/3065777?s=400&u=22268677fc52b34c578fb28a5736bc2e5e792c35&v=4",
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
