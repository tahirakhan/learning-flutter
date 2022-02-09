import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCard extends Card {
  MyCard(
      {required String imageUri,
      required String name,
      required String designation,
      required String description})
      : imageUri = imageUri,
        name = name,
        description = description,
        designation = designation;

  String imageUri;
  String name = "";
  String designation = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                color: Color(0xff7c94b6),
                image: DecorationImage(
                  image: NetworkImage(this.imageUri),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Color.fromRGBO(187, 247, 230, 1),
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(150),
              ),
              width: 75,
              height: 75,
            ),
            ListTile(
              title: Text(this.name,
                  style: TextStyle(fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center),
              subtitle: Text(this.designation, textAlign: TextAlign.center),
            ),
            const Divider(
              color: Color.fromRGBO(255, 255, 8, 1),
              thickness: 3,
              indent: 150,
              endIndent: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                FaIcon(
                  FontAwesomeIcons.quoteLeft,
                  color: Color.fromRGBO(255, 235, 58, 1),
                )
              ]),
            ),
            ListTile(
              subtitle: Text(
                this.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                FaIcon(
                  FontAwesomeIcons.quoteRight,
                  color: Color.fromRGBO(255, 235, 58, 1),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
