// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/sigil.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(70.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/sigil.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 250,
                width: 200,
                margin: EdgeInsets.all(5),
                child: Image.asset(
                  'assets/images/rhaenyra.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.all(5),
                child: Image.asset(
                  'assets/images/rhaenyra3.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
