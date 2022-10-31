// ignore_for_file: prefer_const_constructors

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
        body: Container(
          color: Colors.red.shade300,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'D',
                    ),
                    Text('O'),
                    Text('G'),
                    Text('U'),
                    Text('K'),
                    Text('A'),
                    Text('N'),
                  ],
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.green,
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.red,
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.add_circle,
                  size: 64,
                  color: Colors.yellow,
                ),
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
}
