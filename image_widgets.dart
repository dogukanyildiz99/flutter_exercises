// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          height: 320,
          width: 250,
          margin: EdgeInsets.only(top: 15),
          child: Image.asset(
            'assets/images/rhaenyra.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 150,
          width: 250,
          margin: EdgeInsets.only(top: 15),
          child: Image.asset(
            'assets/images/gunhan.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 15),
            child: CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/images/taylor.jpeg'),
            ))
      ]),
    );
  }
}
