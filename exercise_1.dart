// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      theme: ThemeData(accentColor: const Color.fromARGB(255, 111, 237, 214)),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 185, 255, 248),
        appBar: AppBar(
          title: const Text(
            'HEADER',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w500,
                fontSize: 25),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 74, 74),
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CreateRow(),
            Expanded(child: CreateColumn()),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Clicked');
          },
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          child: const Icon(Icons.account_circle_rounded),
        ),
      ),
    );
  }

  Row CreateRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 60,
          width: 60,
          alignment: Alignment.center,
          color: Color.fromARGB(255, 255, 163, 163),
          child: Text('D',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              )),
        ),
        Container(
          height: 60,
          width: 60,
          alignment: Alignment.center,
          color: Color.fromARGB(255, 255, 96, 85),
          child: Text('A',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              )),
        ),
        Container(
          height: 60,
          width: 60,
          alignment: Alignment.center,
          color: Color.fromARGB(255, 247, 51, 37),
          child: Text('R',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              )),
        ),
        Container(
          height: 60,
          width: 60,
          alignment: Alignment.center,
          color: Color.fromARGB(255, 255, 17, 0),
          child: Text('T',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              )),
        ),
      ],
    );
  }

  Column CreateColumn() {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            color: Color.fromARGB(255, 255, 139, 130),
            child: Text('E',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                )),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            color: Color.fromARGB(255, 255, 96, 85),
            child: Text('R',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                )),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            color: Color.fromARGB(255, 254, 69, 55),
            child: Text('S',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                )),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            color: Color.fromARGB(255, 253, 46, 31),
            child: Text('L',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                )),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            color: Color.fromARGB(255, 244, 16, 0),
            child: Text('E',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                )),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            color: Color.fromARGB(255, 220, 16, 1),
            child: Text('R',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                )),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            color: Color.fromARGB(255, 200, 13, 0),
            child: Text('İ',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }
} // Class
